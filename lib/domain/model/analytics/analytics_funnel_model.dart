import 'package:json_annotation/json_annotation.dart';

part 'analytics_funnel_model.g.dart';

@JsonSerializable()
class AnalyticsFunnelModel {
  String? stage;
  int? count;
  double? pct;

  AnalyticsFunnelModel({
    this.stage,
    this.count,
    this.pct,
  });

  factory AnalyticsFunnelModel.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsFunnelModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnalyticsFunnelModelToJson(this);
}
