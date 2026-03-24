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
      paymentId: json['paymentId'] as String?,
    );

Map<String, dynamic> _$EpayModelToJson(EpayModel instance) => <String, dynamic>{
      'coins': instance.coins,
      'price': instance.price,
      'gstPrice': instance.gstPrice,
      'gstPercentage': instance.gstPercentage,
      'paymentId': instance.paymentId,
    };
