part of 'transcation_bloc.dart';

@freezed
abstract class TranscationState with _$TranscationState {
  const factory TranscationState(
      {required bool hasError,
      required bool isLoading,
      required bool creditedLoading,
      required bool manuelTranscationsLoading,
      required bool manuelTranscationDone,
      required bool debitedLoading,
      required bool downloading,
      required bool downloaded,
      required bool agreePolicys,
      required bool gstError,
      required bool paymentLoading,
      required bool paymetnDone,
      List<Transcation>? creditedTranscations,
      List<Transcation>? debitedTranscations,
      List<TranscationCashModel>? manuelTranscations,
      String? message,
      String? invoice,
      ImageModel? reciept,
      double? amountPayable,
      required bool isCreditedTab}) = _Initial;

  factory TranscationState.initial() => const TranscationState(
      hasError: false,
      manuelTranscationsLoading: false,
      isLoading: false,
      agreePolicys: false,
      paymentLoading: false,
      paymetnDone: false,
      isCreditedTab: true,
      manuelTranscationDone: false,
      downloaded: false,
      gstError: false,
      downloading: false,
      creditedLoading: false,
      debitedLoading: false);
}
