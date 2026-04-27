import 'dart:async';
import 'package:bechdu_partner/data/feature/image_picker_service.dart';
import 'package:bechdu_partner/data/feature/pdf_buffer.dart';
import 'package:bechdu_partner/data/secure_storage/secure_storage.dart';
import 'package:bechdu_partner/domain/model/commen/image/image_model.dart';
import 'package:bechdu_partner/domain/model/commen/page_size_query_model/page_size_query_model.dart';
import 'package:bechdu_partner/domain/model/transcaton/epay_model/epay_model.dart';
import 'package:bechdu_partner/domain/model/transcaton/get_credited_transcations_response_model/transcation.dart';
import 'package:bechdu_partner/domain/model/transcaton/manual_transcation_response_model/transcation_cash_model.dart';
import 'package:bechdu_partner/domain/model/transcaton/manuel_transcation_model/manuel_transcation_model.dart';
import 'package:bechdu_partner/domain/model/transcaton/payu_response_model/payu_response_model.dart';
import 'package:bechdu_partner/domain/repository/service/transcations_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'transcation_event.dart';
part 'transcation_state.dart';
part 'transcation_bloc.freezed.dart';

@injectable
class TranscationBloc extends Bloc<TranscationEvent, TranscationState> {
  final TranscationsRepo transcationsRepo;
  final ImagePickerService imagePickerService;
  final InvoiceMaker invoiceMaker;
  final TextEditingController priceController = TextEditingController();
  int page = 1;
  int pageCount = 10;
  int pageCount2 = 10;
  int pageCount3 = 10;
  TranscationBloc(
      this.transcationsRepo, this.invoiceMaker, this.imagePickerService)
      : super(TranscationState.initial()) {
    on<ChangeTab>(changeTab);
    on<AgreePolicy>(agreePolicy);
    on<GetCreditedTranscations>(getCreditedTranscations);
    on<GetDebitedTranscations>(getDebitedTranscations);
    on<GetCreditedTranscationsNextPage>(getCreditedTranscationsNextPage);
    on<GetDebitedTranscationsNextPage>(getDebitedTranscationsNextPage);
    on<DownloadInvoice>(downloadInvoice);
    on<GetManuelTransactions>(getManuelTransactions);
    on<GetManuelTransactionsNext>(getManuelTransactionsNext);
    on<CalculateAmount>(calculateAmount);
    on<UploadReciept>(uploadReciept);
    on<MakeManuelTranscationRequest>(makeManuelTranscationRequest);
    on<MakeEpaymetns>(makeEpaymetns);
    on<InitiatePayuPayment>(initiatePayuPayment);
    on<MakePdf>(makePdf);
    on<Reset>(reset);
  }

  FutureOr<void> makeEpaymetns(MakeEpaymetns event, emit) async {
    emit(state.copyWith(
        gstError: false,
        message: null,
        hasError: false,
        paymentLoading: true,
        paymetnDone: false,
        payuResponse: null,
        downloaded: false));
    final phone = await SharedPref.getPhone();
    final result = await transcationsRepo.makeEpayment(
        epayModel: event.epayModel, phone: phone!);
    result.fold(
        (l) => emit(state.copyWith(
            hasError: true,
            paymetnDone: false,
            paymentLoading: false,
            message: l.message)), (r) {
      emit(state.copyWith(
          message: r.message, paymentLoading: false, paymetnDone: true));
      add(const TranscationEvent.getCreditedTranscations(call: true));
      add(const TranscationEvent.getDebitedTranscations(call: true));
      add(const TranscationEvent.getManuelTransactions(call: true));
    });
  }

  FutureOr<void> initiatePayuPayment(InitiatePayuPayment event, emit) async {
    emit(state.copyWith(
        payuLoading: true,
        payuResponse: null,
        hasError: false,
        message: null,
        gstError: false));
    final phone = await SharedPref.getPhone();
    final result = await transcationsRepo.initiateEpayment(
        epayModel: event.epayModel, phone: phone!);
    result.fold(
        (l) => emit(state.copyWith(
            hasError: true, payuLoading: false, message: l.message)), (r) {
      emit(state.copyWith(payuLoading: false, payuResponse: r));
    });
  }

  FutureOr<void> reset(Reset event, emit) {
    emit(TranscationState.initial());
  }

  FutureOr<void> changeTab(ChangeTab event, emit) {
    emit(state.copyWith(
        isCreditedTab: !state.isCreditedTab,
        downloaded: false,
        gstError: false,
        hasError: false,
        message: null));
  }

  FutureOr<void> makeManuelTranscationRequest(
      MakeManuelTranscationRequest event, emit) async {
    emit(state.copyWith(
        downloaded: false,
        manuelTranscationsLoading: true,
        manuelTranscationDone: false,
        gstError: false,
        hasError: false,
        payuResponse: null,
        message: null));
    final coins = int.parse(priceController.text.trim());
    final persentage = (coins * event.coinValue) * (event.gst / 100);
    final ManuelTranscationModel model = ManuelTranscationModel(
        coins: priceController.text.trim(),
        image: state.reciept!.base64Image,
        partnerPhone: await SharedPref.getPhone(),
        gstPrice: persentage.toString(),
        price: (coins * event.coinValue).toString(),
        gstPercentage: event.gst.toString());
    final result =
        await transcationsRepo.uploadCheckRecipt(manuelTranscationModel: model);
    result.fold((l) => emit(state.copyWith(manuelTranscationsLoading: false)),
        (r) {
      emit(state.copyWith(
          manuelTranscationsLoading: false,
          manuelTranscationDone: true,
          reciept: null,
          amountPayable: null));
      priceController.text = '';
      add(const TranscationEvent.getManuelTransactions(call: true));
    });
  }

  FutureOr<void> uploadReciept(UploadReciept event, emit) async {
    final image = await imagePickerService.pickImage(camera: event.cam);
    image.fold(
        (l) => null,
        (r) => emit(state.copyWith(
            downloaded: false,
            gstError: false,
            hasError: false,
            message: null,
            reciept: r)));
  }

  FutureOr<void> calculateAmount(CalculateAmount event, emit) {
    emit(state.copyWith(
        downloaded: false, hasError: false, message: null, gstError: false));
    if (event.gstValue == 0) {
      return emit(state.copyWith(
          downloaded: false, hasError: false, message: null, gstError: true));
    }
    final persentage = (event.coins * event.coinValue) * (event.gstValue / 100);
    final total = ((event.coins * event.coinValue)) + persentage;

    return emit(state.copyWith(
        downloaded: false,
        hasError: false,
        message: null,
        gstError: false,
        payuResponse: null,
        amountPayable: total));
  }

  FutureOr<void> agreePolicy(AgreePolicy event, emit) {
    emit(state.copyWith(
        agreePolicys: !state.agreePolicys,
        downloaded: false,
        gstError: false,
        hasError: false,
        message: null));
  }

  FutureOr<void> makePdf(MakePdf event, emit) async {}

  FutureOr<void> downloadInvoice(DownloadInvoice event, emit) async {
    emit(state.copyWith(
        gstError: false,
        message: null,
        invoice: null,
        hasError: false,
        downloading: true,
        downloaded: false));
    final phone = await SharedPref.getPhone();
    pageCount = 5;
    final result =
        await transcationsRepo.downloadInvoice(id: event.id, phone: phone!);
    result.fold(
        (l) => emit(state.copyWith(
            hasError: true,
            downloading: false,
            message: 'Error while generating invoice')), (r) {
      emit(state.copyWith(
          downloading: false, downloaded: true, invoice: r.base64String));
    });
  }

  FutureOr<void> getManuelTransactions(
      GetManuelTransactions event, emit) async {
    if (state.manuelTranscations != null && !event.call) return;
    emit(state.copyWith(
        gstError: false,
        message: null,
        manuelTranscationDone: false,
        hasError: false,
        downloaded: false,
        isLoading: true));
    final phone = await SharedPref.getPhone();
    pageCount3 = 5;
    final result = await transcationsRepo.getManuelTranscations(
        phone: phone!,
        pageSizeQueryModel:
            PageSizeQueryModel(page: page, pageSize: pageCount3));
    result.fold((l) => emit(state.copyWith(hasError: true, isLoading: false)),
        (r) {
      // add(TranscationEvent.makePdf(buffer: r.base64String!));
      emit(state.copyWith(isLoading: false, manuelTranscations: r.data));
    });
  }

  FutureOr<void> getManuelTransactionsNext(
      GetManuelTransactionsNext event, emit) async {
    emit(state.copyWith(
        message: null,
        gstError: false,
        hasError: false,
        downloaded: false,
        manuelTranscationsLoading: true));
    final phone = await SharedPref.getPhone();
    final result = await transcationsRepo.getManuelTranscations(
        phone: phone!,
        pageSizeQueryModel:
            PageSizeQueryModel(page: page, pageSize: pageCount3 += 5));
    result.fold(
        (l) => emit(state.copyWith(
            hasError: true,
            manuelTranscationsLoading: false,
            downloading: false,
            message: 'Error while generating invoice')), (r) {
      emit(state.copyWith(
          manuelTranscationsLoading: false, manuelTranscations: r.data));
    });
  }

  FutureOr<void> getCreditedTranscations(
      GetCreditedTranscations event, emit) async {
    if (state.creditedTranscations != null && !event.call) return;
    emit(state.copyWith(
        gstError: false,
        isLoading: true,
        paymetnDone: false,
        message: null,
        hasError: false,
        downloaded: false));
    final phone = await SharedPref.getPhone();
    pageCount = 10;
    final result = await transcationsRepo.getCreditedTranscations(
        pageSizeQueryModel: PageSizeQueryModel(page: page, pageSize: pageCount),
        phone: phone!);
    result.fold(
        (l) => emit(state.copyWith(isLoading: false, hasError: true)),
        (r) => emit(
            state.copyWith(isLoading: false, creditedTranscations: r.data)));
  }

  FutureOr<void> getCreditedTranscationsNextPage(
      GetCreditedTranscationsNextPage event, emit) async {
    emit(state.copyWith(
        creditedLoading: true,
        gstError: false,
        message: null,
        hasError: false,
        downloaded: false));
    final phone = await SharedPref.getPhone();
    final result = await transcationsRepo.getCreditedTranscations(
        pageSizeQueryModel:
            PageSizeQueryModel(page: page, pageSize: pageCount += 5),
        phone: phone!);
    result.fold(
        (l) => emit(state.copyWith(creditedLoading: false, hasError: true)),
        (r) => emit(state.copyWith(
            creditedLoading: false, creditedTranscations: r.data)));
  }

  FutureOr<void> getDebitedTranscations(
      GetDebitedTranscations event, emit) async {
    if (state.debitedTranscations != null && !event.call) return;
    emit(state.copyWith(
        gstError: false,
        isLoading: true,
        message: null,
        paymetnDone: false,
        hasError: false,
        downloaded: false));
    final phone = await SharedPref.getPhone();
    pageCount2 = 10;
    final result = await transcationsRepo.getDebitedTranscations(
        pageSizeQueryModel:
            PageSizeQueryModel(page: page, pageSize: pageCount2),
        phone: phone!);
    result.fold(
        (l) => emit(state.copyWith(isLoading: false, hasError: true)),
        (r) => emit(
            state.copyWith(isLoading: false, debitedTranscations: r.data)));
  }

  FutureOr<void> getDebitedTranscationsNextPage(
      GetDebitedTranscationsNextPage event, emit) async {
    emit(state.copyWith(
        debitedLoading: true,
        message: null,
        gstError: false,
        hasError: false,
        downloaded: false));
    final phone = await SharedPref.getPhone();
    final result = await transcationsRepo.getDebitedTranscations(
        pageSizeQueryModel:
            PageSizeQueryModel(page: page, pageSize: pageCount2 += 5),
        phone: phone!);
    result.fold(
        (l) => emit(state.copyWith(debitedLoading: false, hasError: true)),
        (r) => emit(state.copyWith(
            debitedLoading: false, debitedTranscations: r.data)));
  }
}
