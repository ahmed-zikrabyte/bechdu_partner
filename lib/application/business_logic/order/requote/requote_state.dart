part of 'requote_bloc.dart';

@freezed
abstract class RequoteState with _$RequoteState {
  const factory RequoteState({
    required bool isLoading,
    required bool hasError,
    String? message,
    String? basePrice,
    String? category,
    String? slug,
    required List<String> dates,
    required List<String> time,
    required bool questionLoading,
    required bool resheduleLoading,
    required bool priceCalculationLoading,
    required bool priceCalculationError,
    required bool requoteLoading,
    required bool requoteError,
    required bool requoteDone,
    required bool resheduleDone,
    required int requoteIndex,
    List<Section>? sections,
    required Map<String, List<SelectedOption>> selectedAnswers,
  }) = _Initial;

  factory RequoteState.initial() => const RequoteState(
      isLoading: false,
      hasError: false,
      requoteIndex: 0,
      priceCalculationLoading: false,
      priceCalculationError: false,
      resheduleDone: false,
      resheduleLoading: false,
      requoteDone: false,
      requoteError: false,
      requoteLoading: false,
      questionLoading: false,
      selectedAnswers: {},
      dates: [],
      time: []);
}
