import 'package:json_annotation/json_annotation.dart';

part 'success_response_model.g.dart';

@JsonSerializable()
class SuccessResponseModel {
  String? message;
  bool? status;

  SuccessResponseModel({this.message, this.status});

  factory SuccessResponseModel.fromJson(Map<String, dynamic> json) {
    return _$SuccessResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SuccessResponseModelToJson(this);
}
