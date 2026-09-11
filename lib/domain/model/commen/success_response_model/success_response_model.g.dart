// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'success_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuccessResponseModel _$SuccessResponseModelFromJson(
        Map<String, dynamic> json) =>
    SuccessResponseModel(
      message: json['message'] as String?,
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$SuccessResponseModelToJson(
        SuccessResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
    };
