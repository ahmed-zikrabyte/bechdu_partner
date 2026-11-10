// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_kpi_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnalyticsKpiModel _$AnalyticsKpiModelFromJson(Map<String, dynamic> json) =>
    AnalyticsKpiModel(
      leadsReceived: (json['leadsReceived'] as num?)?.toInt(),
      leadsAssigned: (json['leadsAssigned'] as num?)?.toInt(),
      leadsAccepted: (json['leadsAccepted'] as num?)?.toInt(),
      leadsContacted: (json['leadsContacted'] as num?)?.toInt(),
      pickupScheduled: (json['pickupScheduled'] as num?)?.toInt(),
      pickupCompleted: (json['pickupCompleted'] as num?)?.toInt(),
      pickupCancelled: (json['pickupCancelled'] as num?)?.toInt(),
      pickupPending: (json['pickupPending'] as num?)?.toInt(),
      overduePickups: (json['overduePickups'] as num?)?.toInt(),
      conversionRate: (json['conversionRate'] as num?)?.toDouble(),
      cancellationRate: (json['cancellationRate'] as num?)?.toDouble(),
      orderVolume: (json['orderVolume'] as num?)?.toInt(),
      totalTransactionValue: json['totalTransactionValue'] as num?,
      gross: json['gross'] as num?,
      grossTransactionValue: json['grossTransactionValue'] as num?,
      profit: json['profit'] as num?,
      grossProfit: json['grossProfit'] as num?,
      loss: json['loss'] as num?,
      grossLoss: json['grossLoss'] as num?,
      netProfit: json['netProfit'] as num?,
      netProfitLoss: json['netProfitLoss'] as num?,
      totalCompletedBasePrice: json['totalCompletedBasePrice'] as num?,
      totalCost: json['totalCost'] as num?,
      totalPromoValue: json['totalPromoValue'] as num?,
      applicableRevenue: json['applicableRevenue'] as num?,
      profitMargin: (json['profitMargin'] as num?)?.toDouble(),
      avgResponseTimeHours: (json['avgResponseTimeHours'] as num?)?.toDouble(),
      avgResponseTimeText: json['avgResponseTimeText'] as String?,
      avgPickupTimeHours: (json['avgPickupTimeHours'] as num?)?.toDouble(),
      avgPickupTimeText: json['avgPickupTimeText'] as String?,
    );

Map<String, dynamic> _$AnalyticsKpiModelToJson(AnalyticsKpiModel instance) =>
    <String, dynamic>{
      'leadsReceived': instance.leadsReceived,
      'leadsAssigned': instance.leadsAssigned,
      'leadsAccepted': instance.leadsAccepted,
      'leadsContacted': instance.leadsContacted,
      'pickupScheduled': instance.pickupScheduled,
      'pickupCompleted': instance.pickupCompleted,
      'pickupCancelled': instance.pickupCancelled,
      'pickupPending': instance.pickupPending,
      'overduePickups': instance.overduePickups,
      'conversionRate': instance.conversionRate,
      'cancellationRate': instance.cancellationRate,
      'orderVolume': instance.orderVolume,
      'totalTransactionValue': instance.totalTransactionValue,
      'gross': instance.gross,
      'grossTransactionValue': instance.grossTransactionValue,
      'profit': instance.profit,
      'grossProfit': instance.grossProfit,
      'loss': instance.loss,
      'grossLoss': instance.grossLoss,
      'netProfit': instance.netProfit,
      'netProfitLoss': instance.netProfitLoss,
      'totalCompletedBasePrice': instance.totalCompletedBasePrice,
      'totalCost': instance.totalCost,
      'totalPromoValue': instance.totalPromoValue,
      'applicableRevenue': instance.applicableRevenue,
      'profitMargin': instance.profitMargin,
      'avgResponseTimeHours': instance.avgResponseTimeHours,
      'avgResponseTimeText': instance.avgResponseTimeText,
      'avgPickupTimeHours': instance.avgPickupTimeHours,
      'avgPickupTimeText': instance.avgPickupTimeText,
    };
