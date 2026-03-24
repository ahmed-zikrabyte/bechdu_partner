part of 'qc_bloc.dart';

@freezed
class QcEvent with _$QcEvent {
  const factory QcEvent.getQcReports({required bool call}) = GetQcReports;
  const factory QcEvent.refreshQcReports() = RefreshQcReports;
  const factory QcEvent.getQcReportDetails({required String reportId}) = GetQcReportDetails;
  const factory QcEvent.downloadQcReport({required String reportId}) = DownloadQcReport;
}
