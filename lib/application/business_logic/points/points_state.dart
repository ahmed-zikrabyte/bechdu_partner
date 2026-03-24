part of 'points_bloc.dart';

@freezed
abstract class PointsState with _$PointsState {
  const factory PointsState({
    required bool hasError,
    required bool isLoading,
    int? gst,
    int? coinValue,
    String? message,
  }) = _Initial;

  factory PointsState.initial() =>
      const PointsState(hasError: false, isLoading: false);
}
