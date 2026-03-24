import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/commen/page_size_query_model/page_size_query_model.dart';
import 'package:bechdu_partner/domain/model/commen/success_response_model/success_response_model.dart';
import 'package:bechdu_partner/domain/model/notification/get_notification_response_model/get_notification_response_model.dart';
import 'package:bechdu_partner/domain/model/notification/get_offers_response_model/get_offers_response_model.dart';
import 'package:bechdu_partner/domain/model/notification/notification_sort_query/notification_sort_query.dart';
import 'package:dartz/dartz.dart';

abstract class NotificatonRepo {
  Future<Either<Failure, GetNotificationResponseModel>> getNotifications(
      {required String phone, required PageSizeQueryModel pageSizeQueryModel});
  Future<Either<Failure, GetNotificationResponseModel>> getSortNotifications(
      {required String phone,
      required NotificationSortQuery notificationQuery});
  Future<Either<Failure, SuccessResponseModel>> changeNotificationStatus(
      {required String phone, required String orderID});
  Future<Either<Failure, GetOffersResponseModel>> getOffers();
}
