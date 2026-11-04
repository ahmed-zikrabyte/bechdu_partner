import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:bechdu_partner/domain/model/analytics/analytics_response_model.dart';
import 'package:bechdu_partner/domain/repository/service/analytics_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'analytics_event.dart';
part 'analytics_state.dart';
part 'analytics_bloc.freezed.dart';

@injectable
class AnalyticsBloc extends Bloc<AnalyticsEvent, AnalyticsState> {
  final AnalyticsRepo _analyticsRepo;

  AnalyticsBloc(this._analyticsRepo) : super(AnalyticsState.initial()) {
    on<FetchAnalytics>(_fetchAnalytics);
  }

  Future<void> _fetchAnalytics(
    FetchAnalytics event,
    Emitter<AnalyticsState> emit,
  ) async {
    print('ANALYTICS EVENT TRIGGERED');
    if (state.analytics != null && !event.forceRefresh) return;

    emit(state.copyWith(
      isLoading: true,
      hasError: false,
      message: null,
    ));

    final result = await _analyticsRepo.getPartnerAnalytics(
      range: event.range,
      startDate: event.startDate,
      endDate: event.endDate,
      executivePhone: event.executivePhone,
    );
    debugPrint('ANALYTICS RESULT: $result');
    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoading: false,
          hasError: true,
          message: failure.message ?? 'Failed to load analytics',
        ));
      },
      (response) {
        print('PARTNER NAME: ${response.partner?.name}');
        print('ANALYTICS KPIS: ${response.kpis?.toJson()}');
        emit(state.copyWith(
          isLoading: false,
          hasError: false,
          analytics: response,
          selectedRange: event.range,
        ));
      },
    );
  }
}
