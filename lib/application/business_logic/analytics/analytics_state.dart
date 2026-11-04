part of 'analytics_bloc.dart';

@freezed
abstract class AnalyticsState with _$AnalyticsState {
  const factory AnalyticsState({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    String? message,
    AnalyticsResponseModel? analytics,
    @Default('monthly') String selectedRange,
  }) = _AnalyticsState;

  factory AnalyticsState.initial() => const AnalyticsState();
}
