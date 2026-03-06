import 'dart:async';
import 'dart:developer' as developer;
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/data/feature/device_informations.dart';
import 'package:bechdu_partner/data/firebase_api/firebase_api.dart';
import 'package:bechdu_partner/data/secure_storage/secure_storage.dart';
import 'package:bechdu_partner/domain/model/auth/otp_model/otp_model.dart';
import 'package:bechdu_partner/domain/model/auth/phone_number_model/phone_number_model.dart';
import 'package:bechdu_partner/domain/model/auth/verify_otp_model/verify_otp_model.dart';
import 'package:bechdu_partner/domain/model/token/token_model.dart';
import 'package:bechdu_partner/domain/repository/service/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  final AuthRepo authRepo;
  AuthBloc(this.authRepo) : super(AuthState.initial()) {
    on<SendOtp>(sendOtp);
    on<VerifyOtp>(verifyOtp);
    on<AgreePolicy>(agreePolicy);
    on<Log>(log);
    on<LogOut>(logOut);
    on<Reset>(reset);
    on<DeleteAccount>(deleteAccount);
    on<VerifyDeleteAccount>(verifyDeleteAccount);
  }

  FutureOr<void> reset(Reset event, emit) {
    emit(AuthState.initial());
  }

  FutureOr<void> deleteAccount(DeleteAccount event, emit) async {
    emit(AuthState.initial().copyWith(
        deleteLoading: true, deleteSuccess: false, deteteOtpSend: false));
    final result = await authRepo.sendOtp(
        phoneNumberModel:
            PhoneNumberModel(mobileNumber: await SharedPref.getPhone()));
    result.fold(
        (l) => emit(state.copyWith(
            message: l.message, hasError: true, deleteLoading: false)),
        (r) => emit(state.copyWith(
            message: r.message, deleteLoading: false, deteteOtpSend: true)));
  }

  FutureOr<void> verifyDeleteAccount(VerifyDeleteAccount event, emit) async {
    emit(AuthState.initial().copyWith(
        deleteLoading: true, deleteSuccess: false, deteteOtpSend: false));
    final phone = await SharedPref.getPhone();
    final result =
        await authRepo.blockPartner(otpModel: event.otpModel, phone: phone!);
    result.fold(
        (l) => emit(state.copyWith(
            message: l.message, hasError: true, deleteLoading: false)), (r) {
      SharedPref.clearLogin();
      return emit(state.copyWith(
          message: r.message, deleteLoading: false, deleteSuccess: true));
    });
  }

  FutureOr<void> sendOtp(SendOtp event, emit) async {
    if (!state.agreePolicy) {
      return emit(state.copyWith(
          message: 'with out agree to our policy user cant signup',
          agreePolicyError: true));
    }
    emit(AuthState.initial().copyWith(isLoading: true));
    final result =
        await authRepo.sendOtp(phoneNumberModel: event.phoneNumberModel);
    result.fold(
        (l) => emit(state.copyWith(
            message: l.message, hasError: true, isLoading: false)),
        (r) => emit(state.copyWith(
            message: r.message, isLoading: false, otpSend: true)));
  }

  FutureOr<void> agreePolicy(AgreePolicy event, emit) {
    emit(state.copyWith(
      agreePolicy: !state.agreePolicy,
      message: null,
      otpVerificationError: false,
      hasError: false,
      agreePolicyError: false,
      isLoading: false,
      otpSend: false,
    ));
  }

  FutureOr<void> log(Log event, emit) async {
    final log = await SharedPref.getLogin();
    final role = await SharedPref.getRole();
    emit(state.copyWith(isLogin: log, role: role));
  }

  FutureOr<void> logOut(LogOut event, emit) async {
    final phone = await SharedPref.getPhone();
    authRepo.logOut(phone: phone!);
    SharedPref.clearLogin();
  }

  FutureOr<void> verifyOtp(VerifyOtp event, emit) async {
    emit(AuthState.initial()
        .copyWith(isLoading: true, otpVerificationError: false));
    final userAgent = await DeviceInformation.getDeviceInformation();
    String? token;
    try {
      token = await NotificationServices().getDeviceToken();
      developer.log("FCM Token for login: $token");
    } catch (e) {
      developer.log("Error fetching FCM token: $e");
    }

    final model = event.verifyOtpModel.copyWith(deviceToken: token);
    developer.log("Sending VerifyOtp request with token: ${model.deviceToken}");

    final result =
        await authRepo.verifyOtp(verifyOtpModel: model, userAgent: userAgent);
    result.fold((l) {
      otpController.clear();
      return emit(state.copyWith(
          isLoading: false, otpVerificationError: true, message: l.message));
    }, (r) async {
      SharedPref.setPhone(phone: r.phone!);
      SharedPref.saveToken(tokenModel: TokenModel(accessToken: r.token));
      emit(state.copyWith(
          isLoading: false,
          message: r.message,
          isLogin: true,
          role: r.role == 'Partner'));
      partner = r.role == 'Partner';
      await SharedPref.setRole(isPartner: r.role == 'Partner');
      await SharedPref.setLogin();
      phoneController.text = '';
      otpController.text = '';
    });
  }
}
