// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_executive_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnalyticsExecutiveModel _$AnalyticsExecutiveModelFromJson(
        Map<String, dynamic> json) =>
    AnalyticsExecutiveModel(
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      status: json['status'] as String?,
      leadsAssigned: (json['leadsAssigned'] as num?)?.toInt(),
      completed: (json['completed'] as num?)?.toInt(),
      cancelled: (json['cancelled'] as num?)?.toInt(),
      pending: (json['pending'] as num?)?.toInt(),
      conversionRate: (json['conversionRate'] as num?)?.toDouble(),
      cancellationRate: (json['cancellationRate'] as num?)?.toDouble(),
      gmv: json['gmv'] as num?,
      avgTurnaroundTime: json['avgTurnaroundTime'] as String?,
    );

Map<String, dynamic> _$AnalyticsExecutiveModelToJson(
        AnalyticsExecutiveModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'status': instance.status,
      'leadsAssigned': instance.leadsAssigned,
      'completed': instance.completed,
      'cancelled': instance.cancelled,
      'pending': instance.pending,
      'conversionRate': instance.conversionRate,
      'cancellationRate': instance.cancellationRate,
      'gmv': instance.gmv,
      'avgTurnaroundTime': instance.avgTurnaroundTime,
    };
