import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/commen/search_size_query/search_size_query.dart';
import 'package:bechdu_partner/domain/model/commen/success_response_model/success_response_model.dart';
import 'package:bechdu_partner/domain/model/order/c_ancel_reason_model/c_ancel_reason_model.dart';
import 'package:bechdu_partner/domain/model/order/complete_order_model/complete_order_model.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/get_partner_order_response_model.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/order_detail.dart';
import 'package:bechdu_partner/domain/model/transcaton/invoice_response_model/invoice_response_model.dart';
import 'package:bechdu_partner/domain/model/ivr/ivr_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class OrderRepo {
  Future<Either<Failure, GetPartnerOrderResponseModel>> getPartnerNewOrders(
      {required String phone, required SearchSizeQuery searchSizeQurey});
  Future<Either<Failure, GetPartnerOrderResponseModel>>
      getPartnerAssignedOrders(
          {required String phone, required SearchSizeQuery searchSizeQurey});
  Future<Either<Failure, SuccessResponseModel>> acceptOrder(
      {required String phone, required String orderId});
  Future<Either<Failure, SuccessResponseModel>> cancelOrder(
      {required String phone,
      required String orderId,
      required CAncelReasonModel cancelReasonModel});
  Future<Either<Failure, SuccessResponseModel>> completeOrder(
      {required String phone,
      required String orderId,
      required CompleteOrderModel completeOrderModel});
  Future<Either<Failure, OrderDetail>> getOrderDetails(
      {required String phone, required String orderId});
  Future<Either<Failure, OrderDetail>> getOrderDetailNotification(
      {required String phone, required String orderID});
  Future<Either<Failure, SuccessResponseModel>> changeNotificationStatusOrder(
      {required String phone, required String orderID});
  Future<Either<Failure, InvoiceResponseModel>> downloadOrderInvoice(
      {required String phone, required String id});
  Future<Either<Failure, IvrResponseModel>> ivrClickToCall(
      {required String customerNumber, required String agentNumber});
}
