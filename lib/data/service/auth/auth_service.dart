import 'dart:developer';

import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/data/service/api_service.dart';
import 'package:bechdu_partner/domain/core/api_endpoints/api_endpoints.dart';
import 'package:bechdu_partner/domain/core/failure/failute.dart';
import 'package:bechdu_partner/domain/model/auth/otp_model/otp_model.dart';
import 'package:bechdu_partner/domain/model/auth/phone_number_model/phone_number_model.dart';
import 'package:bechdu_partner/domain/model/auth/verify_otp_model/verify_otp_model.dart';
import 'package:bechdu_partner/domain/model/auth/verify_otp_response_model/verify_otp_response_model.dart';
import 'package:bechdu_partner/domain/model/commen/error_response_model/error_response_model.dart';
import 'package:bechdu_partner/domain/model/commen/success_response_model/success_response_model.dart';
import 'package:bechdu_partner/domain/repository/service/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepo)
@injectable
class AuthService implements AuthRepo {
  AuthService(this._apiService);
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl));
  final ApiService _apiService;
  @override
  Future<Either<Failure, SuccessResponseModel>> sendOtp(
      {required PhoneNumberModel phoneNumberModel}) async {
    try {
      log('send otp dio exception => ${phoneNumberModel.toJson()}');
      final response = await _dio.post(ApiEndPoints.sendOtp,
          data: phoneNumberModel.toJson());
      return Right(SuccessResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      log('send otp dio exception => $e');
      return Left(Failure(
          message: ErrorResponseModel.fromJson(e.response?.data).error));
    } catch (e) {
      log('send otp exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, VerifyOtpResponseModel>> verifyOtp(
      {required VerifyOtpModel verifyOtpModel,
      required String userAgent}) async {
    try {
      log('verify otp  => ${verifyOtpModel.toJson()}');
      // _dio.options.headers['user-agent']='PocoM2Pro';
      _dio.options.headers.addAll(
          {'user-agent': userAgent, 'content-Type': 'application/json'});
      log(_dio.options.headers.toString());
      log("POST Request to ${ApiEndPoints.verifyOtp}");
      log("Payload: ${verifyOtpModel.toJson()}");
      final response = await _dio.post(ApiEndPoints.verifyOtp,
          data: verifyOtpModel.toJson());
      return Right(VerifyOtpResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      log('verify otp dio exception => ${e.response}');
      return Left(Failure(
          message: ErrorResponseModel.fromJson(e.response?.data).error));
    } catch (e) {
      log('verify otp exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<void> logOut({required String phone}) async {
    try {
      await _apiService.get(ApiEndPoints.logOut.replaceFirst('{phone}', phone));
    } catch (e) {
      log('exception in log out ==>> ${e.toString()}');
    }
  }

  @override
  Future<Either<Failure, SuccessResponseModel>> blockPartner(
      {required OtpModel otpModel, required String phone}) async {
    try {
      final response = await _apiService.put(
          ApiEndPoints.block.replaceFirst('{phone}', phone),
          data: otpModel.toJson());
      return Right(SuccessResponseModel.fromJson(response.data));
    } on DioException catch (e) {
      try {
        log('blockPartner dio exception => $e');
        log(e.response.toString());
        ErrorResponseModel error =
            ErrorResponseModel.fromJson(e.response?.data);
        return Left(Failure(message: error.error ?? errorMessage));
      } catch (e) {
        log('blockPartner exception => $e');
        return Left(Failure(message: errorMessage));
      }
    } catch (e) {
      log('blockPartner exception => $e');
      return Left(Failure(message: errorMessage));
    }
  }
}
