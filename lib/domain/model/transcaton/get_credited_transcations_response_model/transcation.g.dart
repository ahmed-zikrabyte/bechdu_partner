// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transcation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transcation _$TranscationFromJson(Map<String, dynamic> json) => Transcation(
      type: json['type'] as String?,
      paymentId: json['paymentId'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      gstPrice: (json['gstPrice'] as num?)?.toDouble(),
      gstPercentage: (json['gstPercentage'] as num?)?.toInt(),
      partnerState: json['partnerState'] as String?,
      homeState: json['HomeState'] as String?,
      coins: (json['coins'] as num?)?.toInt(),
      message: json['message'] as String?,
      id: json['_id'] as String?,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      orderId: json['orderID'] as String?,
    );

Map<String, dynamic> _$TranscationToJson(Transcation instance) =>
    <String, dynamic>{
      'type': instance.type,
      'paymentId': instance.paymentId,
      'price': instance.price,
      'gstPrice': instance.gstPrice,
      'gstPercentage': instance.gstPercentage,
      'partnerState': instance.partnerState,
      'HomeState': instance.homeState,
      'coins': instance.coins,
      'message': instance.message,
      '_id': instance.id,
      'timestamp': instance.timestamp?.toIso8601String(),
      'orderID': instance.orderId,
    };
