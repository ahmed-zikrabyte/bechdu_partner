// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_trend_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnalyticsTrendModel _$AnalyticsTrendModelFromJson(Map<String, dynamic> json) =>
    AnalyticsTrendModel(
      date: json['date'] as String?,
      received: (json['received'] as num?)?.toInt(),
      completed: (json['completed'] as num?)?.toInt(),
      cancelled: (json['cancelled'] as num?)?.toInt(),
      value: json['value'] as num?,
    );

Map<String, dynamic> _$AnalyticsTrendModelToJson(
        AnalyticsTrendModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'received': instance.received,
      'completed': instance.completed,
      'cancelled': instance.cancelled,
      'value': instance.value,
    };
