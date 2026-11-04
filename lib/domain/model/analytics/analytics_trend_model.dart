import 'package:json_annotation/json_annotation.dart';

part 'analytics_trend_model.g.dart';

@JsonSerializable()
class AnalyticsTrendModel {
  String? date;
  int? received;
  int? completed;
  int? cancelled;
  num? value;

  AnalyticsTrendModel({
    this.date,
    this.received,
    this.completed,
    this.cancelled,
    this.value,
  });

  factory AnalyticsTrendModel.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsTrendModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnalyticsTrendModelToJson(this);
}
