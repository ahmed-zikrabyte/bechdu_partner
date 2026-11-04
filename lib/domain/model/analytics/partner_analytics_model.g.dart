// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner_analytics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartnerAnalyticsModel _$PartnerAnalyticsModelFromJson(
        Map<String, dynamic> json) =>
    PartnerAnalyticsModel(
      partnerId: json['partnerId'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      city: json['city'] as String?,
      status: json['status'] as String?,
      totalExecutives: (json['totalExecutives'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PartnerAnalyticsModelToJson(
        PartnerAnalyticsModel instance) =>
    <String, dynamic>{
      'partnerId': instance.partnerId,
      'name': instance.name,
      'phone': instance.phone,
      'city': instance.city,
      'status': instance.status,
      'totalExecutives': instance.totalExecutives,
    };
