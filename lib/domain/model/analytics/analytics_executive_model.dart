import 'package:json_annotation/json_annotation.dart';

part 'analytics_executive_model.g.dart';

@JsonSerializable()
class AnalyticsExecutiveModel {
  String? name;
  String? phone;
  String? status;
  int? leadsAssigned;
  int? completed;
  int? cancelled;
  int? pending;
  double? conversionRate;
  double? cancellationRate;
  num? gmv;
  String? avgTurnaroundTime;

  AnalyticsExecutiveModel({
    this.name,
    this.phone,
    this.status,
    this.leadsAssigned,
    this.completed,
    this.cancelled,
    this.pending,
    this.conversionRate,
    this.cancellationRate,
    this.gmv,
    this.avgTurnaroundTime,
  });

  factory AnalyticsExecutiveModel.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsExecutiveModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnalyticsExecutiveModelToJson(this);
}
