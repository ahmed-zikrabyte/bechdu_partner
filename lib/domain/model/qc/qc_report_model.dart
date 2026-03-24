import 'package:json_annotation/json_annotation.dart';

part 'qc_report_model.g.dart';

@JsonSerializable()
class QcReport {
  @JsonKey(name: '_id')
  final String? id;
  final String? partnerAutoId;
  final String? userName;
  final String? userEmail;
  final String? userMobile;
  final String? deviceName;
  final String? imeiNumber;
  final String? storage;
  final String? fileName;
  final String? filePath;
  final DateTime? createdAt;

  QcReport({
    this.id,
    this.partnerAutoId,
    this.userName,
    this.userEmail,
    this.userMobile,
    this.deviceName,
    this.imeiNumber,
    this.storage,
    this.fileName,
    this.filePath,
    this.createdAt,
  });

  factory QcReport.fromJson(Map<String, dynamic> json) => _$QcReportFromJson(json);
  Map<String, dynamic> toJson() => _$QcReportToJson(this);
}

@JsonSerializable()
class QcReportsResponse {
  final int? total;
  final int? count;
  final List<QcReport>? reports;

  QcReportsResponse({this.total, this.count, this.reports});

  factory QcReportsResponse.fromJson(Map<String, dynamic> json) => _$QcReportsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$QcReportsResponseToJson(this);
}

@JsonSerializable()
class QcReportDetailResponse {
  final String? reportId;
  final UserDetails? userDetails;
  final DeviceDetails? deviceDetails;
  final ReportDetails? report;

  QcReportDetailResponse({this.reportId, this.userDetails, this.deviceDetails, this.report});

  factory QcReportDetailResponse.fromJson(Map<String, dynamic> json) => _$QcReportDetailResponseFromJson(json);
  Map<String, dynamic> toJson() => _$QcReportDetailResponseToJson(this);
}

@JsonSerializable()
class UserDetails {
  final String? name;
  final String? phone;
  final String? email;

  UserDetails({this.name, this.phone, this.email});

  factory UserDetails.fromJson(Map<String, dynamic> json) => _$UserDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$UserDetailsToJson(this);
}

@JsonSerializable()
class DeviceDetails {
  final String? deviceName;
  final String? imeiNumber;
  final String? storage;

  DeviceDetails({this.deviceName, this.imeiNumber, this.storage});

  factory DeviceDetails.fromJson(Map<String, dynamic> json) => _$DeviceDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceDetailsToJson(this);
}

@JsonSerializable()
class ReportDetails {
  final String? fileName;
  final DateTime? uploadedAt;
  final String? downloadUrl;
  final String? partnerAutoId;

  ReportDetails({this.fileName, this.uploadedAt, this.downloadUrl, this.partnerAutoId});

  factory ReportDetails.fromJson(Map<String, dynamic> json) => _$ReportDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$ReportDetailsToJson(this);
}
