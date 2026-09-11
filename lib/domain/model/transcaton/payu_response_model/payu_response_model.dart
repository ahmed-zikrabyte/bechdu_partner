import 'package:json_annotation/json_annotation.dart';

part 'payu_response_model.g.dart';

@JsonSerializable()
class PayUResponseModel {
  bool? success;
  String? hash;
  String? txnid;
  String? key;
  String? surl;
  String? furl;
  String? message;

  PayUResponseModel({
    this.success,
    this.hash,
    this.txnid,
    this.key,
    this.surl,
    this.furl,
    this.message,
  });

  factory PayUResponseModel.fromJson(Map<String, dynamic> json) {
    return _$PayUResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PayUResponseModelToJson(this);
}
