part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.getNotifications({required bool reset}) =
      GetNotifications;
  const factory NotificationEvent.getNotificationsNext() = GetNotificationsNext;
  const factory NotificationEvent.resetLength() = ResetLength;
  const factory NotificationEvent.sort(int index) = Sort;
  const factory NotificationEvent.markAsRead({required String id}) = MarkAsRead;
  const factory NotificationEvent.getOffers() = GetOffers;
}
