// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payu_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayUResponseModel _$PayUResponseModelFromJson(Map<String, dynamic> json) =>
    PayUResponseModel(
      success: json['success'] as bool?,
      hash: json['hash'] as String?,
      txnid: json['txnid'] as String?,
      key: json['key'] as String?,
      surl: json['surl'] as String?,
      furl: json['furl'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$PayUResponseModelToJson(PayUResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'hash': instance.hash,
      'txnid': instance.txnid,
      'key': instance.key,
      'surl': instance.surl,
      'furl': instance.furl,
      'message': instance.message,
    };
