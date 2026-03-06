import 'dart:async';
import 'package:bechdu_partner/application/presentation/utils/time/time_maker.dart';
import 'package:bechdu_partner/data/secure_storage/secure_storage.dart';
import 'package:bechdu_partner/domain/model/commen/page_size_query_model/page_size_query_model.dart';
import 'package:bechdu_partner/domain/model/notification/get_notification_response_model/notification_model.dart';
import 'package:bechdu_partner/domain/model/notification/notification_sort_query/notification_sort_query.dart';
import 'package:bechdu_partner/domain/repository/service/notification_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

@injectable
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificatonRepo notificatonRepo;
  int size = 15;
  List<String> sortList = [
    'Read',
    'UnRead',
    'Today',
    'This Week',
    'This Month',
    'Last 6 Month'
  ];
  NotificationSortQuery query = NotificationSortQuery(type: 'all');

  NotificationBloc(this.notificatonRepo) : super(NotificationState.initial()) {
    on<GetNotifications>(getNotifications);
    on<GetNotificationsNext>(getNotificationsNext);
    on<ResetLength>(resetLength);
    on<MarkAsRead>(markAsRead);
    on<Sort>(sort);
    on<GetOffers>(getOffers);
  }

  FutureOr<void> getNotifications(GetNotifications event, emit) async {
    emit(state.copyWith(isLoading: true, hasError: false, sortIndexs: []));
    final notiLen = await SharedPref.getNotification();
    final phone = await SharedPref.getPhone();
    final result = await notificatonRepo.getNotifications(
        phone: phone!,
        pageSizeQueryModel: PageSizeQueryModel(page: 1, pageSize: size));
    result.fold((l) => emit(state.copyWith(isLoading: false)), (r) {
      emit(state.copyWith(
          isLoading: false,
          notificationList: r.data,
          totalNotiLength: r.length,
          notiLength: notiLen));
      if (event.reset) {
        add(const NotificationEvent.resetLength());
      }
    });
  }

  FutureOr<void> getNotificationsNext(GetNotificationsNext event, emit) async {
    emit(state.copyWith(pageLoading: true, hasError: false));
    final phone = await SharedPref.getPhone();
    final result = await notificatonRepo.getSortNotifications(
        phone: phone!,
        notificationQuery: query.copyWith(page: 1, pageSize: size += 15));
    result.fold((l) => emit(state.copyWith(pageLoading: false)), (r) {
      emit(state.copyWith(
          pageLoading: false,
          notificationList: r.data,
          notiLength: 0,
          totalNotiLength: r.length));
      add(const NotificationEvent.resetLength());
    });
  }

  FutureOr<void> resetLength(ResetLength event, emit) async {
    if (state.totalNotiLength != null) {
      await SharedPref.setNotification(length: state.totalNotiLength!);
      emit(state.copyWith(notiLength: state.totalNotiLength!));
    }
  }

  FutureOr<void> markAsRead(MarkAsRead event, emit) async {
    final phone = await SharedPref.getPhone();
    final result = await notificatonRepo.changeNotificationStatus(
        phone: phone!, orderID: event.id);
    result.fold((l) => null, (r) {
      // Update notificationList
      List<NotificationModel> notifications = [];
      for (NotificationModel notification in state.notificationList ?? []) {
        if (notification.id == event.id) {
          notification = notification.copyWith(status: true);
        }
        notifications.add(notification);
      }
      // Also update offersList so the Offers tab refreshes instantly
      List<NotificationModel> offers = [];
      for (NotificationModel offer in state.offersList ?? []) {
        if (offer.id == event.id) {
          offers.add(offer.copyWith(status: true));
        } else {
          offers.add(offer);
        }
      }
      return emit(
          state.copyWith(notificationList: notifications, offersList: offers));
    });
  }

  FutureOr<void> sort(Sort event, emit) async {
    final phone = await SharedPref.getPhone();
    List<int> selectedIndex = [...state.sortIndexs];
    if (selectedIndex.contains(event.index)) {
      selectedIndex.remove(event.index);
      if (event.index == 0 || event.index == 1) {
        query = query.copyWith(type: 'all');
      } else if (event.index == 2 ||
          event.index == 3 ||
          event.index == 4 ||
          event.index == 5) {
        query = NotificationSortQuery(
            pageSize: query.pageSize, type: query.type, page: 1);
      }
    } else {
      if (event.index == 0) {
        // read
        removeNumber(1, selectedIndex);
        selectedIndex.add(0);
        query = query.copyWith(type: 'read');
      } else if (event.index == 1) {
        // unread
        selectedIndex.contains(0) ? selectedIndex.remove(0) : selectedIndex;
        selectedIndex.add(1);
        query = query.copyWith(type: 'unread');
      } else if (event.index == 2) {
        // today
        selectedIndex.add(2);
        removeNumber(3, selectedIndex);
        removeNumber(4, selectedIndex);
        removeNumber(5, selectedIndex);
        query = query.copyWith(
            from: dateMakerNotification(DateTime.now()),
            to: dateMakerNotification(DateTime.now()));
      } else if (event.index == 3) {
        // this week
        selectedIndex.add(3);
        removeNumber(2, selectedIndex);
        removeNumber(4, selectedIndex);
        removeNumber(5, selectedIndex);
        query = query.copyWith(
            from: dateMakerNotification(
                DateTime.now().add(const Duration(days: -7))),
            to: dateMakerNotification(DateTime.now()));
      } else if (event.index == 4) {
        // this month
        selectedIndex.add(4);
        removeNumber(3, selectedIndex);
        removeNumber(2, selectedIndex);
        removeNumber(5, selectedIndex);
        query = query.copyWith(
            from: dateMakerNotification(
                DateTime.now().add(const Duration(days: -30))),
            to: dateMakerNotification(DateTime.now()));
      } else if (event.index == 5) {
        // custom
        selectedIndex.add(5);
        removeNumber(3, selectedIndex);
        removeNumber(4, selectedIndex);
        removeNumber(2, selectedIndex);
        query = query.copyWith(
            from: dateMakerNotification(
                DateTime.now().add(const Duration(days: -30 * 6))),
            to: dateMakerNotification(DateTime.now()));
      }
    }
    emit(state.copyWith(sortIndexs: selectedIndex));
    final result = await notificatonRepo.getSortNotifications(
        phone: phone!,
        notificationQuery: query.copyWith(page: 1, pageSize: size));
    result.fold(
        (l) => null, (r) => emit(state.copyWith(notificationList: r.data)));
  }

  FutureOr<void> getOffers(GetOffers event, emit) async {
    emit(state.copyWith(offersLoading: true));
    final result = await notificatonRepo.getOffers();
    result.fold(
      (l) => emit(state.copyWith(offersLoading: false)),
      (r) => emit(
          state.copyWith(offersLoading: false, offersList: r.notifications)),
    );
  }

  List<int> removeNumber(int number, List<int> selectedIndex) {
    if (selectedIndex.contains(number)) {
      selectedIndex.remove(number);
    }
    return selectedIndex;
  }
}
