import 'dart:developer';

import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/data/service/api_service.dart';
import 'package:bechdu_partner/domain/core/api_endpoints/api_endpoints.dart';
import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/commen/error_response_model/error_response_model.dart';
import 'package:bechdu_partner/domain/model/commen/search_size_query/search_size_query.dart';
import 'package:bechdu_partner/domain/model/commen/success_response_model/success_response_model.dart';
import 'package:bechdu_partner/domain/model/order/c_ancel_reason_model/c_ancel_reason_model.dart';
import 'package:bechdu_partner/domain/model/order/complete_order_model/complete_order_model.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/get_partner_order_response_model.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/order_detail.dart';
import 'package:bechdu_partner/domain/model/transcaton/invoice_response_model/invoice_response_model.dart';
import 'package:bechdu_partner/domain/model/ivr/ivr_response_model.dart';
import 'package:bechdu_partner/domain/repository/service/order_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: OrderRepo)
@injectable
class OrderService implements OrderRepo {
  final ApiService _apiService;

  OrderService(this._apiService);

  @override
  Future<Either<Failure, GetPartnerOrderResponseModel>> getPartnerNewOrders(
      {required String phone, required SearchSizeQuery searchSizeQurey}) async {
    try {
      final response = await _apiService.get(
          ApiEndPoints.getNewOrders.replaceFirst('{phone}', phone),
          queryParameters: searchSizeQurey.toJson());
      return Right(GetPartnerOrderResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('getPartnerNewOrders dio exception => $e');
        log(e.response.toString());
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('getPartnerNewOrders exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, GetPartnerOrderResponseModel>>
      getPartnerAssignedOrders(
          {required String phone,
          required SearchSizeQuery searchSizeQurey}) async {
    try {
      final response = await _apiService.get(
          ApiEndPoints.getAssignedOrders.replaceFirst('{phone}', phone),
          queryParameters: searchSizeQurey.toJson());
      return Right(GetPartnerOrderResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('getPartnerAssignedOrders dio exception => $e');
        log(e.response.toString());
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('getPartnerAssignedOrders exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, SuccessResponseModel>> acceptOrder(
      {required String phone, required String orderId}) async {
    try {
      final response = await _apiService.post(ApiEndPoints.acceptOrder
          .replaceFirst('{partnerPhone}', phone)
          .replaceFirst('{orderID}', orderId));
      return Right(SuccessResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('acceptOrder dio exception => $e');
        log(e.response.toString());
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('acceptOrder exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, SuccessResponseModel>> cancelOrder(
      {required String phone,
      required String orderId,
      required CAncelReasonModel cancelReasonModel}) async {
    try {
      final response = await _apiService.put(
          ApiEndPoints.cancelOrder
              .replaceFirst('{partnerPhone}', phone)
              .replaceFirst('{orderId}', orderId),
          data: cancelReasonModel.toJson());
      return Right(SuccessResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('cancelOrder dio exception => $e');
        log(e.response.toString());
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('cancelOrder exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, SuccessResponseModel>> completeOrder(
      {required String phone,
      required String orderId,
      required CompleteOrderModel completeOrderModel}) async {
    try {
      final response = await _apiService.put(
          ApiEndPoints.completeOrder
              .replaceFirst('{partnerPhone}', phone)
              .replaceFirst('{orderId}', orderId),
          data: completeOrderModel.toJson());
      return Right(SuccessResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('completeOrder dio exception => $e');
        log(e.response.toString());
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('completeOrder exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, OrderDetail>> getOrderDetails(
      {required String phone, required String orderId}) async {
    try {
      final response = await _apiService.get(ApiEndPoints.getOrderDetails
          .replaceFirst('{partnerPhone}', phone)
          .replaceFirst('{orderID}', orderId));
      log('getOrderDetails => success');
      return Right(OrderDetail.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('getOrderDetails dio exception => $e');
        log(e.response.toString());
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        log('getOrderDetails exception => $e');
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('getOrderDetails exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, OrderDetail>> getOrderDetailNotification(
      {required String phone, required String orderID}) async {
    try {
      final response = await _apiService.get(ApiEndPoints
          .getNotificationDetailOrder
          .replaceFirst('{phone}', phone)
          .replaceFirst('{id}', orderID));
      log('getOrderDetailNotification => success');
      return Right(OrderDetail.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('getOrderDetailNotification dio exception => $e');
        log(e.response.toString());
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        log('getOrderDetailNotification exception => $e');
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('getOrderDetailNotification exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, InvoiceResponseModel>> downloadOrderInvoice(
      {required String phone, required String id}) async {
    try {
      final response = await _apiService.get(ApiEndPoints.getOrderInvoice
          .replaceFirst('{partnerPhone}', phone)
          .replaceFirst('{orderID}', id));
      log('downloadOrderInvoice success data=> ${response.data}');
      return Right(InvoiceResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('downloadOrderInvoice dio exception => $e');
        // log(e.response.toString());
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('downloadOrderInvoice exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, SuccessResponseModel>> changeNotificationStatusOrder(
      {required String phone, required String orderID}) async {
    try {
      final response = await _apiService.put(ApiEndPoints
          .changeNotificationStatusOrder
          .replaceFirst('{partnerPhone}', phone)
          .replaceFirst('{orderID}', orderID));
      log('changeNotificationStatusOrder success data=> ${response.data}');
      return Right(SuccessResponseModel());
    } on DioException catch (e) {
      try {
        log('changeNotificationStatusOrder dio exception => $e');
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('changeNotificationStatusOrder exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, IvrResponseModel>> ivrClickToCall(
      {required String customerNumber, required String agentNumber}) async {
    try {
      final response = await _apiService.post(
        ApiEndPoints.clickToCall,
        data: {
          "customerNumber": customerNumber,
          "agentNumber": agentNumber,
        },
      );
      log('ivrClickToCall success data=> ${response.data}');
      return Right(IvrResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('ivrClickToCall dio exception => $e');
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('ivrClickToCall exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }
}
