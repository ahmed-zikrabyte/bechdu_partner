// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_sort_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationSortQuery _$NotificationSortQueryFromJson(
        Map<String, dynamic> json) =>
    NotificationSortQuery(
      page: (json['page'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      type: json['type'] as String?,
      from: json['from'] as String?,
      to: json['to'] as String?,
    );

Map<String, dynamic> _$NotificationSortQueryToJson(
        NotificationSortQuery instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'type': instance.type,
      'from': instance.from,
      'to': instance.to,
    };
