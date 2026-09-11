part of 'transcation_bloc.dart';

@freezed
class TranscationEvent with _$TranscationEvent {
  const factory TranscationEvent.changeTab() = ChangeTab;
  const factory TranscationEvent.agreePolicy() = AgreePolicy;
  const factory TranscationEvent.getCreditedTranscations({required bool call}) =
      GetCreditedTranscations;
  const factory TranscationEvent.getDebitedTranscations({required bool call}) =
      GetDebitedTranscations;
  const factory TranscationEvent.getCreditedTranscationsNextPage() =
      GetCreditedTranscationsNextPage;
  const factory TranscationEvent.getDebitedTranscationsNextPage() =
      GetDebitedTranscationsNextPage;
  const factory TranscationEvent.downloadInvoice({required String id}) =
      DownloadInvoice;
  const factory TranscationEvent.makePdf({required String buffer}) = MakePdf;
  const factory TranscationEvent.calculateAmount(
      {required int coins,
      required double coinValue,
      required int gstValue}) = CalculateAmount;
  const factory TranscationEvent.getManuelTransactions({required bool call}) =
      GetManuelTransactions;
  const factory TranscationEvent.getManuelTransactionsNext() =
      GetManuelTransactionsNext;
  const factory TranscationEvent.uploadReciept({required bool cam}) =
      UploadReciept;
  const factory TranscationEvent.makeManuelTranscationRequest(
      {required int gst,
      required double coinValue}) = MakeManuelTranscationRequest;
  const factory TranscationEvent.makeEpaymetns({required EpayModel epayModel}) =
      MakeEpaymetns;
  const factory TranscationEvent.initiatePayuPayment(
      {required EpayModel epayModel}) = InitiatePayuPayment;
  const factory TranscationEvent.reset() = Reset;
}
