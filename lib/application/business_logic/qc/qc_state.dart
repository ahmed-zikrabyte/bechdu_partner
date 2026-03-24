part of 'qc_bloc.dart';

@freezed
abstract class QcState with _$QcState {
  const factory QcState({
    required bool isLoading,
    required bool qcOrdersRefreshLoading,
    required bool isLoadingDetail,
    required bool orderDetailError,
    required bool hasError,
    required bool isDownloadingReport,
    List<QcReport>? qcReports,
    QcReportDetailResponse? reportDetail,
    String? qcReportUrl,
    String? message,
  }) = _Initial;

  factory QcState.initial() => const QcState(
        isLoading: false,
        qcOrdersRefreshLoading: false,
        isLoadingDetail: false,
        orderDetailError: false,
        hasError: false,
        isDownloadingReport: false,
      );
}
