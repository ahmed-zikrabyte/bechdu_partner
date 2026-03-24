// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    NotificationModel(
      type: json['type'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      orderId: json['orderID'] as String?,
      id: json['_id'] as String?,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      status: json['status'] as bool?,
      validTill: json['validTill'] == null
          ? null
          : DateTime.parse(json['validTill'] as String),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
    );

Map<String, dynamic> _$NotificationModelToJson(NotificationModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'body': instance.body,
      'orderID': instance.orderId,
      '_id': instance.id,
      'timestamp': instance.timestamp?.toIso8601String(),
      'status': instance.status,
      'validTill': instance.validTill?.toIso8601String(),
      'startDate': instance.startDate?.toIso8601String(),
    };
