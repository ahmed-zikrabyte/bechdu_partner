import 'package:json_annotation/json_annotation.dart';

part 'analytics_top_device_model.g.dart';

@JsonSerializable()
class AnalyticsTopDeviceModel {
  String? deviceName;
  String? brand;
  int? count;
  num? totalValue;
  num? profit;
  num? grossProfit;

  AnalyticsTopDeviceModel({
    this.deviceName,
    this.brand,
    this.count,
    this.totalValue,
    this.profit,
    this.grossProfit,
  });

  factory AnalyticsTopDeviceModel.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsTopDeviceModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnalyticsTopDeviceModelToJson(this);
}

