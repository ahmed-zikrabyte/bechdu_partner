import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/commen/page_size_query_model/page_size_query_model.dart';
import 'package:bechdu_partner/domain/model/commen/success_response_model/success_response_model.dart';
import 'package:bechdu_partner/domain/model/transcaton/epay_model/epay_model.dart';
import 'package:bechdu_partner/domain/model/transcaton/get_credited_transcations_response_model/get_credited_transcations_response_model.dart';
import 'package:bechdu_partner/domain/model/transcaton/invoice_response_model/invoice_response_model.dart';
import 'package:bechdu_partner/domain/model/transcaton/manual_transcation_response_model/manual_transcation_response_model.dart';
import 'package:bechdu_partner/domain/model/transcaton/manuel_transcation_model/manuel_transcation_model.dart';
import 'package:bechdu_partner/domain/model/transcaton/payu_response_model/payu_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class TranscationsRepo {
  Future<Either<Failure, GetCreditedTranscationsResponseModel>>
      getCreditedTranscations(
          {required PageSizeQueryModel pageSizeQueryModel,
          required String phone});
  Future<Either<Failure, GetCreditedTranscationsResponseModel>>
      getDebitedTranscations(
          {required PageSizeQueryModel pageSizeQueryModel,
          required String phone});
  Future<Either<Failure, InvoiceResponseModel>> downloadInvoice(
      {required String phone, required String id});
  Future<Either<Failure, SuccessResponseModel>> uploadCheckRecipt(
      {required ManuelTranscationModel manuelTranscationModel});
  Future<Either<Failure, ManualTranscationResponseModel>> getManuelTranscations(
      {required String phone, required PageSizeQueryModel pageSizeQueryModel});
  Future<Either<Failure, SuccessResponseModel>> makeEpayment(
      {required String phone, required EpayModel epayModel});
  Future<Either<Failure, PayUResponseModel>> initiateEpayment(
      {required String phone, required EpayModel epayModel});
}
