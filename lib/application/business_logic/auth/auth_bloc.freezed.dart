// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent()';
  }
}

/// @nodoc
class $AuthEventCopyWith<$Res> {
  $AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}

/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendOtp value)? sendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(AgreePolicy value)? agreePolicy,
    TResult Function(Log value)? log,
    TResult Function(LogOut value)? logOut,
    TResult Function(Reset value)? reset,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(VerifyDeleteAccount value)? verifyDeleteAccount,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case SendOtp() when sendOtp != null:
        return sendOtp(_that);
      case VerifyOtp() when verifyOtp != null:
        return verifyOtp(_that);
      case AgreePolicy() when agreePolicy != null:
        return agreePolicy(_that);
      case Log() when log != null:
        return log(_that);
      case LogOut() when logOut != null:
        return logOut(_that);
      case Reset() when reset != null:
        return reset(_that);
      case DeleteAccount() when deleteAccount != null:
        return deleteAccount(_that);
      case VerifyDeleteAccount() when verifyDeleteAccount != null:
        return verifyDeleteAccount(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendOtp value) sendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(AgreePolicy value) agreePolicy,
    required TResult Function(Log value) log,
    required TResult Function(LogOut value) logOut,
    required TResult Function(Reset value) reset,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(VerifyDeleteAccount value) verifyDeleteAccount,
  }) {
    final _that = this;
    switch (_that) {
      case SendOtp():
        return sendOtp(_that);
      case VerifyOtp():
        return verifyOtp(_that);
      case AgreePolicy():
        return agreePolicy(_that);
      case Log():
        return log(_that);
      case LogOut():
        return logOut(_that);
      case Reset():
        return reset(_that);
      case DeleteAccount():
        return deleteAccount(_that);
      case VerifyDeleteAccount():
        return verifyDeleteAccount(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendOtp value)? sendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(AgreePolicy value)? agreePolicy,
    TResult? Function(Log value)? log,
    TResult? Function(LogOut value)? logOut,
    TResult? Function(Reset value)? reset,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(VerifyDeleteAccount value)? verifyDeleteAccount,
  }) {
    final _that = this;
    switch (_that) {
      case SendOtp() when sendOtp != null:
        return sendOtp(_that);
      case VerifyOtp() when verifyOtp != null:
        return verifyOtp(_that);
      case AgreePolicy() when agreePolicy != null:
        return agreePolicy(_that);
      case Log() when log != null:
        return log(_that);
      case LogOut() when logOut != null:
        return logOut(_that);
      case Reset() when reset != null:
        return reset(_that);
      case DeleteAccount() when deleteAccount != null:
        return deleteAccount(_that);
      case VerifyDeleteAccount() when verifyDeleteAccount != null:
        return verifyDeleteAccount(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneNumberModel phoneNumberModel)? sendOtp,
    TResult Function(VerifyOtpModel verifyOtpModel)? verifyOtp,
    TResult Function()? agreePolicy,
    TResult Function()? log,
    TResult Function()? logOut,
    TResult Function()? reset,
    TResult Function()? deleteAccount,
    TResult Function(OtpModel otpModel)? verifyDeleteAccount,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case SendOtp() when sendOtp != null:
        return sendOtp(_that.phoneNumberModel);
      case VerifyOtp() when verifyOtp != null:
        return verifyOtp(_that.verifyOtpModel);
      case AgreePolicy() when agreePolicy != null:
        return agreePolicy();
      case Log() when log != null:
        return log();
      case LogOut() when logOut != null:
        return logOut();
      case Reset() when reset != null:
        return reset();
      case DeleteAccount() when deleteAccount != null:
        return deleteAccount();
      case VerifyDeleteAccount() when verifyDeleteAccount != null:
        return verifyDeleteAccount(_that.otpModel);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneNumberModel phoneNumberModel) sendOtp,
    required TResult Function(VerifyOtpModel verifyOtpModel) verifyOtp,
    required TResult Function() agreePolicy,
    required TResult Function() log,
    required TResult Function() logOut,
    required TResult Function() reset,
    required TResult Function() deleteAccount,
    required TResult Function(OtpModel otpModel) verifyDeleteAccount,
  }) {
    final _that = this;
    switch (_that) {
      case SendOtp():
        return sendOtp(_that.phoneNumberModel);
      case VerifyOtp():
        return verifyOtp(_that.verifyOtpModel);
      case AgreePolicy():
        return agreePolicy();
      case Log():
        return log();
      case LogOut():
        return logOut();
      case Reset():
        return reset();
      case DeleteAccount():
        return deleteAccount();
      case VerifyDeleteAccount():
        return verifyDeleteAccount(_that.otpModel);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberModel phoneNumberModel)? sendOtp,
    TResult? Function(VerifyOtpModel verifyOtpModel)? verifyOtp,
    TResult? Function()? agreePolicy,
    TResult? Function()? log,
    TResult? Function()? logOut,
    TResult? Function()? reset,
    TResult? Function()? deleteAccount,
    TResult? Function(OtpModel otpModel)? verifyDeleteAccount,
  }) {
    final _that = this;
    switch (_that) {
      case SendOtp() when sendOtp != null:
        return sendOtp(_that.phoneNumberModel);
      case VerifyOtp() when verifyOtp != null:
        return verifyOtp(_that.verifyOtpModel);
      case AgreePolicy() when agreePolicy != null:
        return agreePolicy();
      case Log() when log != null:
        return log();
      case LogOut() when logOut != null:
        return logOut();
      case Reset() when reset != null:
        return reset();
      case DeleteAccount() when deleteAccount != null:
        return deleteAccount();
      case VerifyDeleteAccount() when verifyDeleteAccount != null:
        return verifyDeleteAccount(_that.otpModel);
      case _:
        return null;
    }
  }
}

/// @nodoc

class SendOtp implements AuthEvent {
  const SendOtp({required this.phoneNumberModel});

  final PhoneNumberModel phoneNumberModel;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SendOtpCopyWith<SendOtp> get copyWith =>
      _$SendOtpCopyWithImpl<SendOtp>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendOtp &&
            (identical(other.phoneNumberModel, phoneNumberModel) ||
                other.phoneNumberModel == phoneNumberModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumberModel);

  @override
  String toString() {
    return 'AuthEvent.sendOtp(phoneNumberModel: $phoneNumberModel)';
  }
}

/// @nodoc
abstract mixin class $SendOtpCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory $SendOtpCopyWith(SendOtp value, $Res Function(SendOtp) _then) =
      _$SendOtpCopyWithImpl;
  @useResult
  $Res call({PhoneNumberModel phoneNumberModel});
}

/// @nodoc
class _$SendOtpCopyWithImpl<$Res> implements $SendOtpCopyWith<$Res> {
  _$SendOtpCopyWithImpl(this._self, this._then);

  final SendOtp _self;
  final $Res Function(SendOtp) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phoneNumberModel = null,
  }) {
    return _then(SendOtp(
      phoneNumberModel: null == phoneNumberModel
          ? _self.phoneNumberModel
          : phoneNumberModel // ignore: cast_nullable_to_non_nullable
              as PhoneNumberModel,
    ));
  }
}

/// @nodoc

class VerifyOtp implements AuthEvent {
  const VerifyOtp({required this.verifyOtpModel});

  final VerifyOtpModel verifyOtpModel;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerifyOtpCopyWith<VerifyOtp> get copyWith =>
      _$VerifyOtpCopyWithImpl<VerifyOtp>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerifyOtp &&
            (identical(other.verifyOtpModel, verifyOtpModel) ||
                other.verifyOtpModel == verifyOtpModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verifyOtpModel);

  @override
  String toString() {
    return 'AuthEvent.verifyOtp(verifyOtpModel: $verifyOtpModel)';
  }
}

/// @nodoc
abstract mixin class $VerifyOtpCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory $VerifyOtpCopyWith(VerifyOtp value, $Res Function(VerifyOtp) _then) =
      _$VerifyOtpCopyWithImpl;
  @useResult
  $Res call({VerifyOtpModel verifyOtpModel});
}

/// @nodoc
class _$VerifyOtpCopyWithImpl<$Res> implements $VerifyOtpCopyWith<$Res> {
  _$VerifyOtpCopyWithImpl(this._self, this._then);

  final VerifyOtp _self;
  final $Res Function(VerifyOtp) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? verifyOtpModel = null,
  }) {
    return _then(VerifyOtp(
      verifyOtpModel: null == verifyOtpModel
          ? _self.verifyOtpModel
          : verifyOtpModel // ignore: cast_nullable_to_non_nullable
              as VerifyOtpModel,
    ));
  }
}

/// @nodoc

class AgreePolicy implements AuthEvent {
  const AgreePolicy();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AgreePolicy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.agreePolicy()';
  }
}

/// @nodoc

class Log implements AuthEvent {
  const Log();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Log);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.log()';
  }
}

/// @nodoc

class LogOut implements AuthEvent {
  const LogOut();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LogOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }
}

/// @nodoc

class Reset implements AuthEvent {
  const Reset();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.reset()';
  }
}

/// @nodoc

class DeleteAccount implements AuthEvent {
  const DeleteAccount();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeleteAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.deleteAccount()';
  }
}

/// @nodoc

class VerifyDeleteAccount implements AuthEvent {
  const VerifyDeleteAccount({required this.otpModel});

  final OtpModel otpModel;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerifyDeleteAccountCopyWith<VerifyDeleteAccount> get copyWith =>
      _$VerifyDeleteAccountCopyWithImpl<VerifyDeleteAccount>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerifyDeleteAccount &&
            (identical(other.otpModel, otpModel) ||
                other.otpModel == otpModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpModel);

  @override
  String toString() {
    return 'AuthEvent.verifyDeleteAccount(otpModel: $otpModel)';
  }
}

/// @nodoc
abstract mixin class $VerifyDeleteAccountCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory $VerifyDeleteAccountCopyWith(
          VerifyDeleteAccount value, $Res Function(VerifyDeleteAccount) _then) =
      _$VerifyDeleteAccountCopyWithImpl;
  @useResult
  $Res call({OtpModel otpModel});
}

/// @nodoc
class _$VerifyDeleteAccountCopyWithImpl<$Res>
    implements $VerifyDeleteAccountCopyWith<$Res> {
  _$VerifyDeleteAccountCopyWithImpl(this._self, this._then);

  final VerifyDeleteAccount _self;
  final $Res Function(VerifyDeleteAccount) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? otpModel = null,
  }) {
    return _then(VerifyDeleteAccount(
      otpModel: null == otpModel
          ? _self.otpModel
          : otpModel // ignore: cast_nullable_to_non_nullable
              as OtpModel,
    ));
  }
}

/// @nodoc
mixin _$AuthState {
  bool get isLoading;
  bool get hasError;
  bool get otpSend;
  bool get otpVerificationError;
  bool get isLogin;
  bool get role;
  bool get agreePolicy;
  bool get agreePolicyError;
  bool get deleteLoading;
  bool get deteteOtpSend;
  bool get deleteSuccess;
  String? get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthStateCopyWith<AuthState> get copyWith =>
      _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.otpSend, otpSend) || other.otpSend == otpSend) &&
            (identical(other.otpVerificationError, otpVerificationError) ||
                other.otpVerificationError == otpVerificationError) &&
            (identical(other.isLogin, isLogin) || other.isLogin == isLogin) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.agreePolicy, agreePolicy) ||
                other.agreePolicy == agreePolicy) &&
            (identical(other.agreePolicyError, agreePolicyError) ||
                other.agreePolicyError == agreePolicyError) &&
            (identical(other.deleteLoading, deleteLoading) ||
                other.deleteLoading == deleteLoading) &&
            (identical(other.deteteOtpSend, deteteOtpSend) ||
                other.deteteOtpSend == deteteOtpSend) &&
            (identical(other.deleteSuccess, deleteSuccess) ||
                other.deleteSuccess == deleteSuccess) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      otpSend,
      otpVerificationError,
      isLogin,
      role,
      agreePolicy,
      agreePolicyError,
      deleteLoading,
      deteteOtpSend,
      deleteSuccess,
      message);

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, hasError: $hasError, otpSend: $otpSend, otpVerificationError: $otpVerificationError, isLogin: $isLogin, role: $role, agreePolicy: $agreePolicy, agreePolicyError: $agreePolicyError, deleteLoading: $deleteLoading, deteteOtpSend: $deteteOtpSend, deleteSuccess: $deleteSuccess, message: $message)';
  }
}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) =
      _$AuthStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool otpSend,
      bool otpVerificationError,
      bool isLogin,
      bool role,
      bool agreePolicy,
      bool agreePolicyError,
      bool deleteLoading,
      bool deteteOtpSend,
      bool deleteSuccess,
      String? message});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? otpSend = null,
    Object? otpVerificationError = null,
    Object? isLogin = null,
    Object? role = null,
    Object? agreePolicy = null,
    Object? agreePolicyError = null,
    Object? deleteLoading = null,
    Object? deteteOtpSend = null,
    Object? deleteSuccess = null,
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _self.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      otpSend: null == otpSend
          ? _self.otpSend
          : otpSend // ignore: cast_nullable_to_non_nullable
              as bool,
      otpVerificationError: null == otpVerificationError
          ? _self.otpVerificationError
          : otpVerificationError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLogin: null == isLogin
          ? _self.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as bool,
      agreePolicy: null == agreePolicy
          ? _self.agreePolicy
          : agreePolicy // ignore: cast_nullable_to_non_nullable
              as bool,
      agreePolicyError: null == agreePolicyError
          ? _self.agreePolicyError
          : agreePolicyError // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteLoading: null == deleteLoading
          ? _self.deleteLoading
          : deleteLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      deteteOtpSend: null == deteteOtpSend
          ? _self.deteteOtpSend
          : deteteOtpSend // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteSuccess: null == deleteSuccess
          ? _self.deleteSuccess
          : deleteSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Initial value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Initial value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Initial value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Initial() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            bool hasError,
            bool otpSend,
            bool otpVerificationError,
            bool isLogin,
            bool role,
            bool agreePolicy,
            bool agreePolicyError,
            bool deleteLoading,
            bool deteteOtpSend,
            bool deleteSuccess,
            String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when $default != null:
        return $default(
            _that.isLoading,
            _that.hasError,
            _that.otpSend,
            _that.otpVerificationError,
            _that.isLogin,
            _that.role,
            _that.agreePolicy,
            _that.agreePolicyError,
            _that.deleteLoading,
            _that.deteteOtpSend,
            _that.deleteSuccess,
            _that.message);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            bool hasError,
            bool otpSend,
            bool otpVerificationError,
            bool isLogin,
            bool role,
            bool agreePolicy,
            bool agreePolicyError,
            bool deleteLoading,
            bool deteteOtpSend,
            bool deleteSuccess,
            String? message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return $default(
            _that.isLoading,
            _that.hasError,
            _that.otpSend,
            _that.otpVerificationError,
            _that.isLogin,
            _that.role,
            _that.agreePolicy,
            _that.agreePolicyError,
            _that.deleteLoading,
            _that.deteteOtpSend,
            _that.deleteSuccess,
            _that.message);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool isLoading,
            bool hasError,
            bool otpSend,
            bool otpVerificationError,
            bool isLogin,
            bool role,
            bool agreePolicy,
            bool agreePolicyError,
            bool deleteLoading,
            bool deteteOtpSend,
            bool deleteSuccess,
            String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Initial() when $default != null:
        return $default(
            _that.isLoading,
            _that.hasError,
            _that.otpSend,
            _that.otpVerificationError,
            _that.isLogin,
            _that.role,
            _that.agreePolicy,
            _that.agreePolicyError,
            _that.deleteLoading,
            _that.deteteOtpSend,
            _that.deleteSuccess,
            _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements AuthState {
  const _Initial(
      {required this.isLoading,
      required this.hasError,
      required this.otpSend,
      required this.otpVerificationError,
      required this.isLogin,
      required this.role,
      required this.agreePolicy,
      required this.agreePolicyError,
      required this.deleteLoading,
      required this.deteteOtpSend,
      required this.deleteSuccess,
      this.message});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool otpSend;
  @override
  final bool otpVerificationError;
  @override
  final bool isLogin;
  @override
  final bool role;
  @override
  final bool agreePolicy;
  @override
  final bool agreePolicyError;
  @override
  final bool deleteLoading;
  @override
  final bool deteteOtpSend;
  @override
  final bool deleteSuccess;
  @override
  final String? message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.otpSend, otpSend) || other.otpSend == otpSend) &&
            (identical(other.otpVerificationError, otpVerificationError) ||
                other.otpVerificationError == otpVerificationError) &&
            (identical(other.isLogin, isLogin) || other.isLogin == isLogin) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.agreePolicy, agreePolicy) ||
                other.agreePolicy == agreePolicy) &&
            (identical(other.agreePolicyError, agreePolicyError) ||
                other.agreePolicyError == agreePolicyError) &&
            (identical(other.deleteLoading, deleteLoading) ||
                other.deleteLoading == deleteLoading) &&
            (identical(other.deteteOtpSend, deteteOtpSend) ||
                other.deteteOtpSend == deteteOtpSend) &&
            (identical(other.deleteSuccess, deleteSuccess) ||
                other.deleteSuccess == deleteSuccess) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      otpSend,
      otpVerificationError,
      isLogin,
      role,
      agreePolicy,
      agreePolicyError,
      deleteLoading,
      deteteOtpSend,
      deleteSuccess,
      message);

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, hasError: $hasError, otpSend: $otpSend, otpVerificationError: $otpVerificationError, isLogin: $isLogin, role: $role, agreePolicy: $agreePolicy, agreePolicyError: $agreePolicyError, deleteLoading: $deleteLoading, deteteOtpSend: $deteteOtpSend, deleteSuccess: $deleteSuccess, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) =
      __$InitialCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool otpSend,
      bool otpVerificationError,
      bool isLogin,
      bool role,
      bool agreePolicy,
      bool agreePolicyError,
      bool deleteLoading,
      bool deteteOtpSend,
      bool deleteSuccess,
      String? message});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? otpSend = null,
    Object? otpVerificationError = null,
    Object? isLogin = null,
    Object? role = null,
    Object? agreePolicy = null,
    Object? agreePolicyError = null,
    Object? deleteLoading = null,
    Object? deteteOtpSend = null,
    Object? deleteSuccess = null,
    Object? message = freezed,
  }) {
    return _then(_Initial(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _self.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      otpSend: null == otpSend
          ? _self.otpSend
          : otpSend // ignore: cast_nullable_to_non_nullable
              as bool,
      otpVerificationError: null == otpVerificationError
          ? _self.otpVerificationError
          : otpVerificationError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLogin: null == isLogin
          ? _self.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as bool,
      agreePolicy: null == agreePolicy
          ? _self.agreePolicy
          : agreePolicy // ignore: cast_nullable_to_non_nullable
              as bool,
      agreePolicyError: null == agreePolicyError
          ? _self.agreePolicyError
          : agreePolicyError // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteLoading: null == deleteLoading
          ? _self.deleteLoading
          : deleteLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      deteteOtpSend: null == deteteOtpSend
          ? _self.deteteOtpSend
          : deteteOtpSend // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteSuccess: null == deleteSuccess
          ? _self.deleteSuccess
          : deleteSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
