import 'package:json_annotation/json_annotation.dart';

part 'partner_analytics_model.g.dart';

@JsonSerializable()
class PartnerAnalyticsModel {
  String? partnerId;
  String? name;
  String? phone;
  String? city;
  String? status;
  int? totalExecutives;

  PartnerAnalyticsModel({
    this.partnerId,
    this.name,
    this.phone,
    this.city,
    this.status,
    this.totalExecutives,
  });

  factory PartnerAnalyticsModel.fromJson(Map<String, dynamic> json) =>
      _$PartnerAnalyticsModelFromJson(json);

  Map<String, dynamic> toJson() => _$PartnerAnalyticsModelToJson(this);
}
