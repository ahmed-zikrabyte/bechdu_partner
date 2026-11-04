// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnalyticsResponseModel _$AnalyticsResponseModelFromJson(
        Map<String, dynamic> json) =>
    AnalyticsResponseModel(
      success: json['success'] as bool?,
      partner: json['partner'] == null
          ? null
          : PartnerAnalyticsModel.fromJson(
              json['partner'] as Map<String, dynamic>),
      filters: json['filters'] as Map<String, dynamic>?,
      kpis: json['kpis'] == null
          ? null
          : AnalyticsKpiModel.fromJson(json['kpis'] as Map<String, dynamic>),
      funnel: (json['funnel'] as List<dynamic>?)
          ?.map((e) => AnalyticsFunnelModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      trends: (json['trends'] as List<dynamic>?)
          ?.map((e) => AnalyticsTrendModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      statusDistribution: json['statusDistribution'] == null
          ? null
          : AnalyticsStatusModel.fromJson(
              json['statusDistribution'] as Map<String, dynamic>),
      executives: (json['executives'] as List<dynamic>?)
          ?.map((e) =>
              AnalyticsExecutiveModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnalyticsResponseModelToJson(
        AnalyticsResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'partner': instance.partner,
      'filters': instance.filters,
      'kpis': instance.kpis,
      'funnel': instance.funnel,
      'trends': instance.trends,
      'statusDistribution': instance.statusDistribution,
      'executives': instance.executives,
    };
