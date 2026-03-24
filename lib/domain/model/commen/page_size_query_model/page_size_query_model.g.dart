// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_size_query_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageSizeQueryModel _$PageSizeQueryModelFromJson(Map<String, dynamic> json) =>
    PageSizeQueryModel(
      page: (json['page'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PageSizeQueryModelToJson(PageSizeQueryModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
    };
