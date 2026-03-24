// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceInfo _$DeviceInfoFromJson(Map<String, dynamic> json) => DeviceInfo(
      deviceName: json['deviceName'] as String?,
      imei: json['imei'] as String?,
      condition: json['condition'] as String?,
      storage: json['storage'] as String?,
      color: json['color'] as String?,
      finalPrice: json['finalPrice'] as String?,
      imeiNumber: json['imeiNumber'] as String?,
      deviceBill: json['deviceBill'] as String?,
      idCard:
          (json['idCard'] as List<dynamic>?)?.map((e) => e as String).toList(),
      deviceImages: (json['deviceImages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      imeiImage: json['imeiImage'] as String?,
      signatureImage: json['signatureImage'] as String?,
    );

Map<String, dynamic> _$DeviceInfoToJson(DeviceInfo instance) =>
    <String, dynamic>{
      'deviceName': instance.deviceName,
      'imei': instance.imei,
      'condition': instance.condition,
      'storage': instance.storage,
      'color': instance.color,
      'finalPrice': instance.finalPrice,
      'imeiNumber': instance.imeiNumber,
      'imeiImage': instance.imeiImage,
      'deviceBill': instance.deviceBill,
      'idCard': instance.idCard,
      'deviceImages': instance.deviceImages,
      'signatureImage': instance.signatureImage,
    };
