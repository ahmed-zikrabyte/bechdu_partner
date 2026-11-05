// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_top_brand_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnalyticsTopBrandModel _$AnalyticsTopBrandModelFromJson(
        Map<String, dynamic> json) =>
    AnalyticsTopBrandModel(
      brand: json['brand'] as String?,
      count: (json['count'] as num?)?.toInt(),
      totalValue: json['totalValue'] as num?,
      profit: json['profit'] as num?,
      grossProfit: json['grossProfit'] as num?,
    );

Map<String, dynamic> _$AnalyticsTopBrandModelToJson(
        AnalyticsTopBrandModel instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'count': instance.count,
      'totalValue': instance.totalValue,
      'profit': instance.profit,
      'grossProfit': instance.grossProfit,
    };

