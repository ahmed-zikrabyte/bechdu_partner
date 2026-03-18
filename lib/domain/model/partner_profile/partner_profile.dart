import 'package:json_annotation/json_annotation.dart';

import 'pick_up_person.dart';

part 'partner_profile.g.dart';

@JsonSerializable()
class PartnerProfile {
  @JsonKey(name: '_id')
  String? id;
  String? phone;
  String? name;
  String? email;
  String? address;
  List<String>? pinCodes;
  String? role;
  String? coins;
  List<PickUpPerson>? pickUpPersons;
  String? loggedInDevice;
  String? otp;
  dynamic otpExpiry;
  String? status;
  String? partnerId;

  PartnerProfile({
    this.id,
    this.phone,
    this.name,
    this.email,
    this.address,
    this.pinCodes,
    this.role,
    this.coins,
    this.pickUpPersons,
    this.loggedInDevice,
    this.otp,
    this.otpExpiry,
    this.status,
    this.partnerId,
  });

  factory PartnerProfile.fromJson(Map<String, dynamic> json) {
    return _$PartnerProfileFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PartnerProfileToJson(this);
}
