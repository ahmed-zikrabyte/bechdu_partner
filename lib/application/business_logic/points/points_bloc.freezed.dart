// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'points_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PointsEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PointsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PointsEvent()';
  }
}

/// @nodoc
class $PointsEventCopyWith<$Res> {
  $PointsEventCopyWith(PointsEvent _, $Res Function(PointsEvent) __);
}

/// Adds pattern-matching-related methods to [PointsEvent].
extension PointsEventPatterns on PointsEvent {
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
    TResult Function(GetGst value)? getGst,
    TResult Function(GetCoinValue value)? getCoinValue,
    TResult Function(Reset value)? reset,
    TResult Function(FindPayableAmound value)? findPayableAmound,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetGst() when getGst != null:
        return getGst(_that);
      case GetCoinValue() when getCoinValue != null:
        return getCoinValue(_that);
      case Reset() when reset != null:
        return reset(_that);
      case FindPayableAmound() when findPayableAmound != null:
        return findPayableAmound(_that);
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
    required TResult Function(GetGst value) getGst,
    required TResult Function(GetCoinValue value) getCoinValue,
    required TResult Function(Reset value) reset,
    required TResult Function(FindPayableAmound value) findPayableAmound,
  }) {
    final _that = this;
    switch (_that) {
      case GetGst():
        return getGst(_that);
      case GetCoinValue():
        return getCoinValue(_that);
      case Reset():
        return reset(_that);
      case FindPayableAmound():
        return findPayableAmound(_that);
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
    TResult? Function(GetGst value)? getGst,
    TResult? Function(GetCoinValue value)? getCoinValue,
    TResult? Function(Reset value)? reset,
    TResult? Function(FindPayableAmound value)? findPayableAmound,
  }) {
    final _that = this;
    switch (_that) {
      case GetGst() when getGst != null:
        return getGst(_that);
      case GetCoinValue() when getCoinValue != null:
        return getCoinValue(_that);
      case Reset() when reset != null:
        return reset(_that);
      case FindPayableAmound() when findPayableAmound != null:
        return findPayableAmound(_that);
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
    TResult Function()? getGst,
    TResult Function()? getCoinValue,
    TResult Function()? reset,
    TResult Function(int coins)? findPayableAmound,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetGst() when getGst != null:
        return getGst();
      case GetCoinValue() when getCoinValue != null:
        return getCoinValue();
      case Reset() when reset != null:
        return reset();
      case FindPayableAmound() when findPayableAmound != null:
        return findPayableAmound(_that.coins);
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
    required TResult Function() getGst,
    required TResult Function() getCoinValue,
    required TResult Function() reset,
    required TResult Function(int coins) findPayableAmound,
  }) {
    final _that = this;
    switch (_that) {
      case GetGst():
        return getGst();
      case GetCoinValue():
        return getCoinValue();
      case Reset():
        return reset();
      case FindPayableAmound():
        return findPayableAmound(_that.coins);
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
    TResult? Function()? getGst,
    TResult? Function()? getCoinValue,
    TResult? Function()? reset,
    TResult? Function(int coins)? findPayableAmound,
  }) {
    final _that = this;
    switch (_that) {
      case GetGst() when getGst != null:
        return getGst();
      case GetCoinValue() when getCoinValue != null:
        return getCoinValue();
      case Reset() when reset != null:
        return reset();
      case FindPayableAmound() when findPayableAmound != null:
        return findPayableAmound(_that.coins);
      case _:
        return null;
    }
  }
}

/// @nodoc

class GetGst implements PointsEvent {
  const GetGst();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetGst);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PointsEvent.getGst()';
  }
}

/// @nodoc

class GetCoinValue implements PointsEvent {
  const GetCoinValue();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetCoinValue);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PointsEvent.getCoinValue()';
  }
}

/// @nodoc

class Reset implements PointsEvent {
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
    return 'PointsEvent.reset()';
  }
}

/// @nodoc

class FindPayableAmound implements PointsEvent {
  const FindPayableAmound({required this.coins});

  final int coins;

  /// Create a copy of PointsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FindPayableAmoundCopyWith<FindPayableAmound> get copyWith =>
      _$FindPayableAmoundCopyWithImpl<FindPayableAmound>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FindPayableAmound &&
            (identical(other.coins, coins) || other.coins == coins));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coins);

  @override
  String toString() {
    return 'PointsEvent.findPayableAmound(coins: $coins)';
  }
}

/// @nodoc
abstract mixin class $FindPayableAmoundCopyWith<$Res>
    implements $PointsEventCopyWith<$Res> {
  factory $FindPayableAmoundCopyWith(
          FindPayableAmound value, $Res Function(FindPayableAmound) _then) =
      _$FindPayableAmoundCopyWithImpl;
  @useResult
  $Res call({int coins});
}

/// @nodoc
class _$FindPayableAmoundCopyWithImpl<$Res>
    implements $FindPayableAmoundCopyWith<$Res> {
  _$FindPayableAmoundCopyWithImpl(this._self, this._then);

  final FindPayableAmound _self;
  final $Res Function(FindPayableAmound) _then;

  /// Create a copy of PointsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? coins = null,
  }) {
    return _then(FindPayableAmound(
      coins: null == coins
          ? _self.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$PointsState {
  bool get hasError;
  bool get isLoading;
  int? get gst;
  int? get coinValue;
  String? get message;

  /// Create a copy of PointsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PointsStateCopyWith<PointsState> get copyWith =>
      _$PointsStateCopyWithImpl<PointsState>(this as PointsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PointsState &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.gst, gst) || other.gst == gst) &&
            (identical(other.coinValue, coinValue) ||
                other.coinValue == coinValue) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, hasError, isLoading, gst, coinValue, message);

  @override
  String toString() {
    return 'PointsState(hasError: $hasError, isLoading: $isLoading, gst: $gst, coinValue: $coinValue, message: $message)';
  }
}

/// @nodoc
abstract mixin class $PointsStateCopyWith<$Res> {
  factory $PointsStateCopyWith(
          PointsState value, $Res Function(PointsState) _then) =
      _$PointsStateCopyWithImpl;
  @useResult
  $Res call(
      {bool hasError,
      bool isLoading,
      int? gst,
      int? coinValue,
      String? message});
}

/// @nodoc
class _$PointsStateCopyWithImpl<$Res> implements $PointsStateCopyWith<$Res> {
  _$PointsStateCopyWithImpl(this._self, this._then);

  final PointsState _self;
  final $Res Function(PointsState) _then;

  /// Create a copy of PointsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasError = null,
    Object? isLoading = null,
    Object? gst = freezed,
    Object? coinValue = freezed,
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      hasError: null == hasError
          ? _self.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      gst: freezed == gst
          ? _self.gst
          : gst // ignore: cast_nullable_to_non_nullable
              as int?,
      coinValue: freezed == coinValue
          ? _self.coinValue
          : coinValue // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PointsState].
extension PointsStatePatterns on PointsState {
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
    TResult Function(bool hasError, bool isLoading, int? gst, int? coinValue,
            String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when $default != null:
        return $default(_that.hasError, _that.isLoading, _that.gst,
            _that.coinValue, _that.message);
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
    TResult Function(bool hasError, bool isLoading, int? gst, int? coinValue,
            String? message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return $default(_that.hasError, _that.isLoading, _that.gst,
            _that.coinValue, _that.message);
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
    TResult? Function(bool hasError, bool isLoading, int? gst, int? coinValue,
            String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Initial() when $default != null:
        return $default(_that.hasError, _that.isLoading, _that.gst,
            _that.coinValue, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements PointsState {
  const _Initial(
      {required this.hasError,
      required this.isLoading,
      this.gst,
      this.coinValue,
      this.message});

  @override
  final bool hasError;
  @override
  final bool isLoading;
  @override
  final int? gst;
  @override
  final int? coinValue;
  @override
  final String? message;

  /// Create a copy of PointsState
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
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.gst, gst) || other.gst == gst) &&
            (identical(other.coinValue, coinValue) ||
                other.coinValue == coinValue) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, hasError, isLoading, gst, coinValue, message);

  @override
  String toString() {
    return 'PointsState(hasError: $hasError, isLoading: $isLoading, gst: $gst, coinValue: $coinValue, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res>
    implements $PointsStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) =
      __$InitialCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool hasError,
      bool isLoading,
      int? gst,
      int? coinValue,
      String? message});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

  /// Create a copy of PointsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? hasError = null,
    Object? isLoading = null,
    Object? gst = freezed,
    Object? coinValue = freezed,
    Object? message = freezed,
  }) {
    return _then(_Initial(
      hasError: null == hasError
          ? _self.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      gst: freezed == gst
          ? _self.gst
          : gst // ignore: cast_nullable_to_non_nullable
              as int?,
      coinValue: freezed == coinValue
          ? _self.coinValue
          : coinValue // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
