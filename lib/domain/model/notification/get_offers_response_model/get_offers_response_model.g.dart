// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_offers_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOffersResponseModel _$GetOffersResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetOffersResponseModel(
      notifications: (json['notifications'] as List<dynamic>?)
          ?.map((e) => NotificationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      unreadCount: (json['unreadCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetOffersResponseModelToJson(
        GetOffersResponseModel instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
      'unreadCount': instance.unreadCount,
    };
