// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transcation_cash_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TranscationCashModel _$TranscationCashModelFromJson(
        Map<String, dynamic> json) =>
    TranscationCashModel(
      id: json['_id'] as String?,
      partnerPhone: json['partnerPhone'] as String?,
      coins: (json['coins'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toDouble(),
      gstPrice: (json['gstPrice'] as num?)?.toDouble(),
      gstPercentage: (json['gstPercentage'] as num?)?.toInt(),
      status: json['status'] as String?,
      partnerState: json['partnerState'] as String?,
      partnerName: json['partnerName'] as String?,
      homeState: json['HomeState'] as String?,
      message: json['message'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num?)?.toInt(),
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TranscationCashModelToJson(
        TranscationCashModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'partnerPhone': instance.partnerPhone,
      'coins': instance.coins,
      'price': instance.price,
      'gstPrice': instance.gstPrice,
      'gstPercentage': instance.gstPercentage,
      'status': instance.status,
      'partnerState': instance.partnerState,
      'partnerName': instance.partnerName,
      'HomeState': instance.homeState,
      'message': instance.message,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
      'totalPrice': instance.totalPrice,
    };
