// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartnerProfile _$PartnerProfileFromJson(Map<String, dynamic> json) =>
    PartnerProfile(
      id: json['_id'] as String?,
      phone: json['phone'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      pinCodes: (json['pinCodes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      role: json['role'] as String?,
      coins: json['coins'] as String?,
      pickUpPersons: (json['pickUpPersons'] as List<dynamic>?)
          ?.map((e) => PickUpPerson.fromJson(e as Map<String, dynamic>))
          .toList(),
      loggedInDevice: json['loggedInDevice'] as String?,
      otp: json['otp'] as String?,
      otpExpiry: json['otpExpiry'],
      status: json['status'] as String?,
      partnerId: json['partnerId'] as String?,
    );

Map<String, dynamic> _$PartnerProfileToJson(PartnerProfile instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'phone': instance.phone,
      'name': instance.name,
      'email': instance.email,
      'address': instance.address,
      'pinCodes': instance.pinCodes,
      'role': instance.role,
      'coins': instance.coins,
      'pickUpPersons': instance.pickUpPersons,
      'loggedInDevice': instance.loggedInDevice,
      'otp': instance.otp,
      'otpExpiry': instance.otpExpiry,
      'status': instance.status,
      'partnerId': instance.partnerId,
    };
