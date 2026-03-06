import 'package:bechdu_partner/domain/model/notification/get_notification_response_model/notification_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_offers_response_model.g.dart';

@JsonSerializable()
class GetOffersResponseModel {
  List<NotificationModel>? notifications;
  int? unreadCount;

  GetOffersResponseModel({this.notifications, this.unreadCount});

  factory GetOffersResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetOffersResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetOffersResponseModelToJson(this);
}
