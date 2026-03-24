// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompleteOrderModel _$CompleteOrderModelFromJson(Map<String, dynamic> json) =>
    CompleteOrderModel(
      deviceInfo: json['deviceInfo'] == null
          ? null
          : DeviceInfo.fromJson(json['deviceInfo'] as Map<String, dynamic>),
      customerSignature: json['customerSignature'] as String?,
    );

Map<String, dynamic> _$CompleteOrderModelToJson(CompleteOrderModel instance) =>
    <String, dynamic>{
      'deviceInfo': instance.deviceInfo,
      'customerSignature': instance.customerSignature,
    };
