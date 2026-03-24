part of 'notification_bloc.dart';

@freezed
abstract class NotificationState with _$NotificationState {
  const factory NotificationState(
      {required bool isLoading,
      required bool pageLoading,
      required bool hasError,
      required bool offersLoading,
      int? notiLength,
      int? totalNotiLength,
      String? message,
      required List<int> sortIndexs,
      List<NotificationModel>? notificationList,
      List<NotificationModel>? offersList}) = _Initial;
  factory NotificationState.initial() => const NotificationState(
      isLoading: true,
      hasError: false,
      pageLoading: false,
      offersLoading: false,
      sortIndexs: []);
}
