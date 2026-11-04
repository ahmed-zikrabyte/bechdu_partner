import 'package:json_annotation/json_annotation.dart';

import 'partner_analytics_model.dart';
import 'analytics_kpi_model.dart';
import 'analytics_funnel_model.dart';
import 'analytics_trend_model.dart';
import 'analytics_status_model.dart';
import 'analytics_executive_model.dart';

part 'analytics_response_model.g.dart';

@JsonSerializable()
class AnalyticsResponseModel {
  bool? success;
  PartnerAnalyticsModel? partner;
  Map<String, dynamic>? filters;
  AnalyticsKpiModel? kpis;
  List<AnalyticsFunnelModel>? funnel;
  List<AnalyticsTrendModel>? trends;
  AnalyticsStatusModel? statusDistribution;
  List<AnalyticsExecutiveModel>? executives;

  AnalyticsResponseModel({
    this.success,
    this.partner,
    this.filters,
    this.kpis,
    this.funnel,
    this.trends,
    this.statusDistribution,
    this.executives,
  });

  factory AnalyticsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnalyticsResponseModelToJson(this);
}
