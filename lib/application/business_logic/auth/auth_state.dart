part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required bool hasError,
    required bool otpSend,
    required bool otpVerificationError,
    required bool isLogin,
    required bool role,
    required bool agreePolicy,
    required bool agreePolicyError,
    required bool deleteLoading,
    required bool deteteOtpSend,
    required bool deleteSuccess,
    String? message,
  }) = _Initial;

  factory AuthState.initial() => const AuthState(
      isLoading: false,
      hasError: false,
      role: false,
      otpSend: false,
      agreePolicy: true,
      agreePolicyError: false,
      otpVerificationError: false,
      isLogin: false,
      deleteLoading: false,
      deleteSuccess: false,
      deteteOtpSend: false);
}
