// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qc_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QcReport _$QcReportFromJson(Map<String, dynamic> json) => QcReport(
      id: json['_id'] as String?,
      partnerAutoId: json['partnerAutoId'] as String?,
      userName: json['userName'] as String?,
      userEmail: json['userEmail'] as String?,
      userMobile: json['userMobile'] as String?,
      deviceName: json['deviceName'] as String?,
      imeiNumber: json['imeiNumber'] as String?,
      storage: json['storage'] as String?,
      fileName: json['fileName'] as String?,
      filePath: json['filePath'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$QcReportToJson(QcReport instance) => <String, dynamic>{
      '_id': instance.id,
      'partnerAutoId': instance.partnerAutoId,
      'userName': instance.userName,
      'userEmail': instance.userEmail,
      'userMobile': instance.userMobile,
      'deviceName': instance.deviceName,
      'imeiNumber': instance.imeiNumber,
      'storage': instance.storage,
      'fileName': instance.fileName,
      'filePath': instance.filePath,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

QcReportsResponse _$QcReportsResponseFromJson(Map<String, dynamic> json) =>
    QcReportsResponse(
      total: (json['total'] as num?)?.toInt(),
      count: (json['count'] as num?)?.toInt(),
      reports: (json['reports'] as List<dynamic>?)
          ?.map((e) => QcReport.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QcReportsResponseToJson(QcReportsResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'count': instance.count,
      'reports': instance.reports,
    };

QcReportDetailResponse _$QcReportDetailResponseFromJson(
        Map<String, dynamic> json) =>
    QcReportDetailResponse(
      reportId: json['reportId'] as String?,
      userDetails: json['userDetails'] == null
          ? null
          : UserDetails.fromJson(json['userDetails'] as Map<String, dynamic>),
      deviceDetails: json['deviceDetails'] == null
          ? null
          : DeviceDetails.fromJson(
              json['deviceDetails'] as Map<String, dynamic>),
      report: json['report'] == null
          ? null
          : ReportDetails.fromJson(json['report'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QcReportDetailResponseToJson(
        QcReportDetailResponse instance) =>
    <String, dynamic>{
      'reportId': instance.reportId,
      'userDetails': instance.userDetails,
      'deviceDetails': instance.deviceDetails,
      'report': instance.report,
    };

UserDetails _$UserDetailsFromJson(Map<String, dynamic> json) => UserDetails(
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$UserDetailsToJson(UserDetails instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
    };

DeviceDetails _$DeviceDetailsFromJson(Map<String, dynamic> json) =>
    DeviceDetails(
      deviceName: json['deviceName'] as String?,
      imeiNumber: json['imeiNumber'] as String?,
      storage: json['storage'] as String?,
    );

Map<String, dynamic> _$DeviceDetailsToJson(DeviceDetails instance) =>
    <String, dynamic>{
      'deviceName': instance.deviceName,
      'imeiNumber': instance.imeiNumber,
      'storage': instance.storage,
    };

ReportDetails _$ReportDetailsFromJson(Map<String, dynamic> json) =>
    ReportDetails(
      fileName: json['fileName'] as String?,
      uploadedAt: json['uploadedAt'] == null
          ? null
          : DateTime.parse(json['uploadedAt'] as String),
      downloadUrl: json['downloadUrl'] as String?,
      partnerAutoId: json['partnerAutoId'] as String?,
    );

Map<String, dynamic> _$ReportDetailsToJson(ReportDetails instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'uploadedAt': instance.uploadedAt?.toIso8601String(),
      'downloadUrl': instance.downloadUrl,
      'partnerAutoId': instance.partnerAutoId,
    };
