// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'epay_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpayModel _$EpayModelFromJson(Map<String, dynamic> json) => EpayModel(
      coins: (json['coins'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toDouble(),
      gstPrice: (json['gstPrice'] as num?)?.toDouble(),
      gstPercentage: (json['gstPercentage'] as num?)?.toInt(),
      action: json['action'] as String?,
      paymentId: json['paymentId'] as String?,
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
      payuResponse: json['payuResponse'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$EpayModelToJson(EpayModel instance) => <String, dynamic>{
      'coins': instance.coins,
      'price': instance.price,
      'gstPrice': instance.gstPrice,
      'gstPercentage': instance.gstPercentage,
      'action': instance.action,
      'paymentId': instance.paymentId,
      'totalPrice': instance.totalPrice,
      'payuResponse': instance.payuResponse,
    };
