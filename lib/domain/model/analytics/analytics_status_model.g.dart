// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnalyticsStatusModel _$AnalyticsStatusModelFromJson(
        Map<String, dynamic> json) =>
    AnalyticsStatusModel(
      newCount: (json['new'] as num?)?.toInt(),
      processing: (json['processing'] as num?)?.toInt(),
      completed: (json['completed'] as num?)?.toInt(),
      cancelled: (json['cancelled'] as num?)?.toInt(),
      rescheduled: (json['rescheduled'] as num?)?.toInt(),
      other: (json['other'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AnalyticsStatusModelToJson(
        AnalyticsStatusModel instance) =>
    <String, dynamic>{
      'new': instance.newCount,
      'processing': instance.processing,
      'completed': instance.completed,
      'cancelled': instance.cancelled,
      'rescheduled': instance.rescheduled,
      'other': instance.other,
    };
