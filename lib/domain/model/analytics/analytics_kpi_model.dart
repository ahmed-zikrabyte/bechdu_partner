import 'package:json_annotation/json_annotation.dart';

part 'analytics_kpi_model.g.dart';

@JsonSerializable()
class AnalyticsKpiModel {
  int? leadsReceived;
  int? leadsAssigned;
  int? leadsAccepted;
  int? leadsContacted;

  int? pickupScheduled;
  int? pickupCompleted;
  int? pickupCancelled;
  int? pickupPending;
  int? overduePickups;

  double? conversionRate;
  double? cancellationRate;

  int? orderVolume;
  num? totalTransactionValue;
  num? applicableRevenue;

  double? avgResponseTimeHours;
  String? avgResponseTimeText;

  double? avgPickupTimeHours;
  String? avgPickupTimeText;

  AnalyticsKpiModel({
    this.leadsReceived,
    this.leadsAssigned,
    this.leadsAccepted,
    this.leadsContacted,
    this.pickupScheduled,
    this.pickupCompleted,
    this.pickupCancelled,
    this.pickupPending,
    this.overduePickups,
    this.conversionRate,
    this.cancellationRate,
    this.orderVolume,
    this.totalTransactionValue,
    this.applicableRevenue,
    this.avgResponseTimeHours,
    this.avgResponseTimeText,
    this.avgPickupTimeHours,
    this.avgPickupTimeText,
  });

  factory AnalyticsKpiModel.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsKpiModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnalyticsKpiModelToJson(this);
}
