import 'dart:async';
import 'package:bechdu_partner/domain/model/qc/qc_report_model.dart';
import 'package:bechdu_partner/domain/repository/service/order_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bechdu_partner/domain/core/api_endpoints/api_endpoints.dart';
import 'package:bechdu_partner/data/secure_storage/secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

part 'qc_event.dart';
part 'qc_state.dart';
part 'qc_bloc.freezed.dart';

@injectable
class QcBloc extends Bloc<QcEvent, QcState> {
  final OrderRepo _orderRepo;
  final Dio _dio = Dio();
  int page = 1;
  int pageSize = 10;
  final TextEditingController searchController = TextEditingController();

  QcBloc(this._orderRepo) : super(QcState.initial()) {
    on<GetQcReports>(getQcReports);
    on<RefreshQcReports>(refreshQcReports);
    on<GetQcReportDetails>(getQcReportDetails);
    on<DownloadQcReport>(downloadQcReport);
  }

  FutureOr<void> getQcReports(GetQcReports event, emit) async {
    if (state.qcReports != null && !event.call) return;
    emit(state.copyWith(isLoading: true, message: null, hasError: false));

    try {
      final token = await SharedPref.getToken();
      final response = await _dio.get(
        '${ApiEndPoints.baseUrl}${ApiEndPoints.getQcReports}',
        queryParameters: {'page': page, 'pageSize': pageSize},
        options: Options(
          headers: {'Authorization': 'Bearer ${token.accessToken}'},
        ),
      );
      if (response.statusCode == 200) {
        final reportsResponse = QcReportsResponse.fromJson(response.data);
        emit(state.copyWith(
          isLoading: false, 
          qcReports: reportsResponse.reports,
        ));
      } else {
        emit(state.copyWith(
            isLoading: false,
            hasError: true,
            message: 'Failed to fetch QC reports'));
      }
    } catch (e) {
      emit(state.copyWith(
          isLoading: false,
          hasError: true,
          message: 'Something went wrong: $e'));
    }
  }

  FutureOr<void> refreshQcReports(RefreshQcReports event, emit) async {
    emit(state.copyWith(
        qcOrdersRefreshLoading: true, message: null, hasError: false));

    try {
      final token = await SharedPref.getToken();
      final response = await _dio.get(
        '${ApiEndPoints.baseUrl}${ApiEndPoints.getQcReports}',
        queryParameters: {'page': 1, 'pageSize': pageSize},
        options: Options(
          headers: {'Authorization': 'Bearer ${token.accessToken}'},
        ),
      );
      if (response.statusCode == 200) {
        final reportsResponse = QcReportsResponse.fromJson(response.data);
        emit(state.copyWith(
            qcOrdersRefreshLoading: false, qcReports: reportsResponse.reports));
      } else {
        emit(state.copyWith(
            qcOrdersRefreshLoading: false,
            hasError: true,
            message: 'Failed to fetch QC reports'));
      }
    } catch (e) {
      emit(state.copyWith(
          qcOrdersRefreshLoading: false,
          hasError: true,
          message: 'Something went wrong: $e'));
    }
  }

  FutureOr<void> getQcReportDetails(GetQcReportDetails event, emit) async {
    emit(state.copyWith(
        isLoadingDetail: true,
        orderDetailError: false,
        message: null,
        reportDetail: null,
        qcReportUrl: null));
    try {
      final token = await SharedPref.getToken();
      final response = await _dio.get(
        '${ApiEndPoints.baseUrl}${ApiEndPoints.getQcReportDetails}/${event.reportId}',
        options: Options(
          headers: {'Authorization': 'Bearer ${token.accessToken}'},
        ),
      );
      if (response.statusCode == 200) {
        final detailResponse = QcReportDetailResponse.fromJson(response.data);
        emit(state.copyWith(
            isLoadingDetail: false,
            reportDetail: detailResponse,
            qcReportUrl: detailResponse.report?.downloadUrl));
      } else {
        emit(state.copyWith(
            isLoadingDetail: false,
            orderDetailError: true,
            message: 'Failed to fetch report details'));
      }
    } catch (e) {
      emit(state.copyWith(
          isLoadingDetail: false,
          orderDetailError: true,
          message: 'Something went wrong: $e'));
    }
  }

  FutureOr<void> downloadQcReport(DownloadQcReport event, emit) async {
    emit(state.copyWith(isDownloadingReport: true, message: null));
    try {
      final token = await SharedPref.getToken();
      final response = await _dio.get(
        '${ApiEndPoints.baseUrl}${ApiEndPoints.downloadQcReport}/${event.reportId}',
        options: Options(
          headers: {'Authorization': 'Bearer ${token.accessToken}'},
        ),
      );
      if (response.statusCode == 200) {
        final downloadUrl = response.data['downloadUrl'];
        emit(state.copyWith(
            isDownloadingReport: false,
            message: 'Opening report...',
            qcReportUrl: downloadUrl));
      } else {
        emit(state.copyWith(
            isDownloadingReport: false, message: 'Could not fetch report'));
      }
    } catch (e) {
      emit(state.copyWith(
          isDownloadingReport: false, message: 'Download error'));
    }
  }
}
