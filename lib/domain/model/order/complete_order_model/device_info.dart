import 'package:json_annotation/json_annotation.dart';

part 'device_info.g.dart';

@JsonSerializable()
class DeviceInfo {
  String? deviceName;
  String? imei;
  String? condition;
  String? storage;
  String? color;
  String? finalPrice;
  String? imeiNumber;
  String? imeiImage;
  String? deviceBill;
  List<String>? idCard; // 🔄 Changed from String? to List<String>?
  List<String>? deviceImages;
  String? signatureImage;

  DeviceInfo({
    this.deviceName,
    this.imei,
    this.condition,
    this.storage,
    this.color,
    this.finalPrice,
    this.imeiNumber,
    this.deviceBill,
    this.idCard, // ✅ Updated here
    this.deviceImages,
    this.imeiImage,
    this.signatureImage,
  });

  factory DeviceInfo.fromJson(Map<String, dynamic> json) =>
      _$DeviceInfoFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceInfoToJson(this);
}
