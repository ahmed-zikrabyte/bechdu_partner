// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_top_device_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnalyticsTopDeviceModel _$AnalyticsTopDeviceModelFromJson(
        Map<String, dynamic> json) =>
    AnalyticsTopDeviceModel(
      deviceName: json['deviceName'] as String?,
      brand: json['brand'] as String?,
      count: (json['count'] as num?)?.toInt(),
      totalValue: json['totalValue'] as num?,
      profit: json['profit'] as num?,
      grossProfit: json['grossProfit'] as num?,
    );

Map<String, dynamic> _$AnalyticsTopDeviceModelToJson(
        AnalyticsTopDeviceModel instance) =>
    <String, dynamic>{
      'deviceName': instance.deviceName,
      'brand': instance.brand,
      'count': instance.count,
      'totalValue': instance.totalValue,
      'profit': instance.profit,
      'grossProfit': instance.grossProfit,
    };
