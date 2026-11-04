// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_funnel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnalyticsFunnelModel _$AnalyticsFunnelModelFromJson(
        Map<String, dynamic> json) =>
    AnalyticsFunnelModel(
      stage: json['stage'] as String?,
      count: (json['count'] as num?)?.toInt(),
      pct: (json['pct'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AnalyticsFunnelModelToJson(
        AnalyticsFunnelModel instance) =>
    <String, dynamic>{
      'stage': instance.stage,
      'count': instance.count,
      'pct': instance.pct,
    };
