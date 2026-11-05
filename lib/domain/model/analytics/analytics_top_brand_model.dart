import 'package:json_annotation/json_annotation.dart';

part 'analytics_top_brand_model.g.dart';

@JsonSerializable()
class AnalyticsTopBrandModel {
  String? brand;
  int? count;
  num? totalValue;
  num? profit;
  num? grossProfit;

  AnalyticsTopBrandModel({
    this.brand,
    this.count,
    this.totalValue,
    this.profit,
    this.grossProfit,
  });

  factory AnalyticsTopBrandModel.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsTopBrandModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnalyticsTopBrandModelToJson(this);
}

