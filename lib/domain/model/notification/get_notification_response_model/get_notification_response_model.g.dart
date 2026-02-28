// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notification_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetNotificationResponseModel _$GetNotificationResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetNotificationResponseModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => NotificationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      length: (json['length'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetNotificationResponseModelToJson(
        GetNotificationResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'length': instance.length,
    };
