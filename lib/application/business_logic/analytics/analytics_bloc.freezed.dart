// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnalyticsEvent implements DiagnosticableTreeMixin {
  String get range;
  String? get startDate;
  String? get endDate;
  String? get executivePhone;
  bool get forceRefresh;

  /// Create a copy of AnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnalyticsEventCopyWith<AnalyticsEvent> get copyWith =>
      _$AnalyticsEventCopyWithImpl<AnalyticsEvent>(
          this as AnalyticsEvent, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'AnalyticsEvent'))
      ..add(DiagnosticsProperty('range', range))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('executivePhone', executivePhone))
      ..add(DiagnosticsProperty('forceRefresh', forceRefresh));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnalyticsEvent &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.executivePhone, executivePhone) ||
                other.executivePhone == executivePhone) &&
            (identical(other.forceRefresh, forceRefresh) ||
                other.forceRefresh == forceRefresh));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, range, startDate, endDate, executivePhone, forceRefresh);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnalyticsEvent(range: $range, startDate: $startDate, endDate: $endDate, executivePhone: $executivePhone, forceRefresh: $forceRefresh)';
  }
}

/// @nodoc
abstract mixin class $AnalyticsEventCopyWith<$Res> {
  factory $AnalyticsEventCopyWith(
          AnalyticsEvent value, $Res Function(AnalyticsEvent) _then) =
      _$AnalyticsEventCopyWithImpl;
  @useResult
  $Res call(
      {String range,
      String? startDate,
      String? endDate,
      String? executivePhone,
      bool forceRefresh});
}

/// @nodoc
class _$AnalyticsEventCopyWithImpl<$Res>
    implements $AnalyticsEventCopyWith<$Res> {
  _$AnalyticsEventCopyWithImpl(this._self, this._then);

  final AnalyticsEvent _self;
  final $Res Function(AnalyticsEvent) _then;

  /// Create a copy of AnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? executivePhone = freezed,
    Object? forceRefresh = null,
  }) {
    return _then(_self.copyWith(
      range: null == range
          ? _self.range
          : range // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      executivePhone: freezed == executivePhone
          ? _self.executivePhone
          : executivePhone // ignore: cast_nullable_to_non_nullable
              as String?,
      forceRefresh: null == forceRefresh
          ? _self.forceRefresh
          : forceRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [AnalyticsEvent].
extension AnalyticsEventPatterns on AnalyticsEvent {
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
    TResult Function(FetchAnalytics value)? fetchAnalytics,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case FetchAnalytics() when fetchAnalytics != null:
        return fetchAnalytics(_that);
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
    required TResult Function(FetchAnalytics value) fetchAnalytics,
  }) {
    final _that = this;
    switch (_that) {
      case FetchAnalytics():
        return fetchAnalytics(_that);
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
    TResult? Function(FetchAnalytics value)? fetchAnalytics,
  }) {
    final _that = this;
    switch (_that) {
      case FetchAnalytics() when fetchAnalytics != null:
        return fetchAnalytics(_that);
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
    TResult Function(String range, String? startDate, String? endDate,
            String? executivePhone, bool forceRefresh)?
        fetchAnalytics,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case FetchAnalytics() when fetchAnalytics != null:
        return fetchAnalytics(_that.range, _that.startDate, _that.endDate,
            _that.executivePhone, _that.forceRefresh);
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
    required TResult Function(String range, String? startDate, String? endDate,
            String? executivePhone, bool forceRefresh)
        fetchAnalytics,
  }) {
    final _that = this;
    switch (_that) {
      case FetchAnalytics():
        return fetchAnalytics(_that.range, _that.startDate, _that.endDate,
            _that.executivePhone, _that.forceRefresh);
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
    TResult? Function(String range, String? startDate, String? endDate,
            String? executivePhone, bool forceRefresh)?
        fetchAnalytics,
  }) {
    final _that = this;
    switch (_that) {
      case FetchAnalytics() when fetchAnalytics != null:
        return fetchAnalytics(_that.range, _that.startDate, _that.endDate,
            _that.executivePhone, _that.forceRefresh);
      case _:
        return null;
    }
  }
}

/// @nodoc

class FetchAnalytics with DiagnosticableTreeMixin implements AnalyticsEvent {
  const FetchAnalytics(
      {this.range = 'monthly',
      this.startDate,
      this.endDate,
      this.executivePhone,
      this.forceRefresh = false});

  @override
  @JsonKey()
  final String range;
  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  final String? executivePhone;
  @override
  @JsonKey()
  final bool forceRefresh;

  /// Create a copy of AnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FetchAnalyticsCopyWith<FetchAnalytics> get copyWith =>
      _$FetchAnalyticsCopyWithImpl<FetchAnalytics>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'AnalyticsEvent.fetchAnalytics'))
      ..add(DiagnosticsProperty('range', range))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('executivePhone', executivePhone))
      ..add(DiagnosticsProperty('forceRefresh', forceRefresh));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FetchAnalytics &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.executivePhone, executivePhone) ||
                other.executivePhone == executivePhone) &&
            (identical(other.forceRefresh, forceRefresh) ||
                other.forceRefresh == forceRefresh));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, range, startDate, endDate, executivePhone, forceRefresh);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnalyticsEvent.fetchAnalytics(range: $range, startDate: $startDate, endDate: $endDate, executivePhone: $executivePhone, forceRefresh: $forceRefresh)';
  }
}

/// @nodoc
abstract mixin class $FetchAnalyticsCopyWith<$Res>
    implements $AnalyticsEventCopyWith<$Res> {
  factory $FetchAnalyticsCopyWith(
          FetchAnalytics value, $Res Function(FetchAnalytics) _then) =
      _$FetchAnalyticsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String range,
      String? startDate,
      String? endDate,
      String? executivePhone,
      bool forceRefresh});
}

/// @nodoc
class _$FetchAnalyticsCopyWithImpl<$Res>
    implements $FetchAnalyticsCopyWith<$Res> {
  _$FetchAnalyticsCopyWithImpl(this._self, this._then);

  final FetchAnalytics _self;
  final $Res Function(FetchAnalytics) _then;

  /// Create a copy of AnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? range = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? executivePhone = freezed,
    Object? forceRefresh = null,
  }) {
    return _then(FetchAnalytics(
      range: null == range
          ? _self.range
          : range // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      executivePhone: freezed == executivePhone
          ? _self.executivePhone
          : executivePhone // ignore: cast_nullable_to_non_nullable
              as String?,
      forceRefresh: null == forceRefresh
          ? _self.forceRefresh
          : forceRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$AnalyticsState implements DiagnosticableTreeMixin {
  bool get isLoading;
  bool get hasError;
  String? get message;
  AnalyticsResponseModel? get analytics;
  String get selectedRange;

  /// Create a copy of AnalyticsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnalyticsStateCopyWith<AnalyticsState> get copyWith =>
      _$AnalyticsStateCopyWithImpl<AnalyticsState>(
          this as AnalyticsState, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'AnalyticsState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('hasError', hasError))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('analytics', analytics))
      ..add(DiagnosticsProperty('selectedRange', selectedRange));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnalyticsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.analytics, analytics) ||
                other.analytics == analytics) &&
            (identical(other.selectedRange, selectedRange) ||
                other.selectedRange == selectedRange));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, hasError, message, analytics, selectedRange);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnalyticsState(isLoading: $isLoading, hasError: $hasError, message: $message, analytics: $analytics, selectedRange: $selectedRange)';
  }
}

/// @nodoc
abstract mixin class $AnalyticsStateCopyWith<$Res> {
  factory $AnalyticsStateCopyWith(
          AnalyticsState value, $Res Function(AnalyticsState) _then) =
      _$AnalyticsStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      AnalyticsResponseModel? analytics,
      String selectedRange});
}

/// @nodoc
class _$AnalyticsStateCopyWithImpl<$Res>
    implements $AnalyticsStateCopyWith<$Res> {
  _$AnalyticsStateCopyWithImpl(this._self, this._then);

  final AnalyticsState _self;
  final $Res Function(AnalyticsState) _then;

  /// Create a copy of AnalyticsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? message = freezed,
    Object? analytics = freezed,
    Object? selectedRange = null,
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
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      analytics: freezed == analytics
          ? _self.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as AnalyticsResponseModel?,
      selectedRange: null == selectedRange
          ? _self.selectedRange
          : selectedRange // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AnalyticsState].
extension AnalyticsStatePatterns on AnalyticsState {
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
    TResult Function(_AnalyticsState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AnalyticsState() when $default != null:
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
    TResult Function(_AnalyticsState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AnalyticsState():
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
    TResult? Function(_AnalyticsState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AnalyticsState() when $default != null:
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
    TResult Function(bool isLoading, bool hasError, String? message,
            AnalyticsResponseModel? analytics, String selectedRange)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AnalyticsState() when $default != null:
        return $default(_that.isLoading, _that.hasError, _that.message,
            _that.analytics, _that.selectedRange);
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
    TResult Function(bool isLoading, bool hasError, String? message,
            AnalyticsResponseModel? analytics, String selectedRange)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AnalyticsState():
        return $default(_that.isLoading, _that.hasError, _that.message,
            _that.analytics, _that.selectedRange);
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
    TResult? Function(bool isLoading, bool hasError, String? message,
            AnalyticsResponseModel? analytics, String selectedRange)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AnalyticsState() when $default != null:
        return $default(_that.isLoading, _that.hasError, _that.message,
            _that.analytics, _that.selectedRange);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AnalyticsState with DiagnosticableTreeMixin implements AnalyticsState {
  const _AnalyticsState(
      {this.isLoading = false,
      this.hasError = false,
      this.message,
      this.analytics,
      this.selectedRange = 'monthly'});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool hasError;
  @override
  final String? message;
  @override
  final AnalyticsResponseModel? analytics;
  @override
  @JsonKey()
  final String selectedRange;

  /// Create a copy of AnalyticsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnalyticsStateCopyWith<_AnalyticsState> get copyWith =>
      __$AnalyticsStateCopyWithImpl<_AnalyticsState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'AnalyticsState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('hasError', hasError))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('analytics', analytics))
      ..add(DiagnosticsProperty('selectedRange', selectedRange));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnalyticsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.analytics, analytics) ||
                other.analytics == analytics) &&
            (identical(other.selectedRange, selectedRange) ||
                other.selectedRange == selectedRange));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, hasError, message, analytics, selectedRange);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnalyticsState(isLoading: $isLoading, hasError: $hasError, message: $message, analytics: $analytics, selectedRange: $selectedRange)';
  }
}

/// @nodoc
abstract mixin class _$AnalyticsStateCopyWith<$Res>
    implements $AnalyticsStateCopyWith<$Res> {
  factory _$AnalyticsStateCopyWith(
          _AnalyticsState value, $Res Function(_AnalyticsState) _then) =
      __$AnalyticsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      AnalyticsResponseModel? analytics,
      String selectedRange});
}

/// @nodoc
class __$AnalyticsStateCopyWithImpl<$Res>
    implements _$AnalyticsStateCopyWith<$Res> {
  __$AnalyticsStateCopyWithImpl(this._self, this._then);

  final _AnalyticsState _self;
  final $Res Function(_AnalyticsState) _then;

  /// Create a copy of AnalyticsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? message = freezed,
    Object? analytics = freezed,
    Object? selectedRange = null,
  }) {
    return _then(_AnalyticsState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _self.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      analytics: freezed == analytics
          ? _self.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as AnalyticsResponseModel?,
      selectedRange: null == selectedRange
          ? _self.selectedRange
          : selectedRange // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
