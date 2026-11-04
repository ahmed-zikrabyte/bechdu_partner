part of 'analytics_bloc.dart';

@freezed
abstract class AnalyticsEvent with _$AnalyticsEvent {
  const factory AnalyticsEvent.fetchAnalytics({
    @Default('monthly') String range,
    String? startDate,
    String? endDate,
    String? executivePhone,
    @Default(false) bool forceRefresh,
  }) = FetchAnalytics;
}
