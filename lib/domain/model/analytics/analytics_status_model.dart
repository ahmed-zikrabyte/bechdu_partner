import 'package:json_annotation/json_annotation.dart';

part 'analytics_status_model.g.dart';

@JsonSerializable()
class AnalyticsStatusModel {
  @JsonKey(name: 'new')
  int? newCount;
  int? processing;
  int? completed;
  int? cancelled;
  int? rescheduled;
  int? other;

  AnalyticsStatusModel({
    this.newCount,
    this.processing,
    this.completed,
    this.cancelled,
    this.rescheduled,
    this.other,
  });

  factory AnalyticsStatusModel.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsStatusModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnalyticsStatusModelToJson(this);
}
