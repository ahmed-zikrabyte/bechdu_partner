// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QcEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is QcEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'QcEvent()';
  }
}

/// @nodoc
class $QcEventCopyWith<$Res> {
  $QcEventCopyWith(QcEvent _, $Res Function(QcEvent) __);
}

/// Adds pattern-matching-related methods to [QcEvent].
extension QcEventPatterns on QcEvent {
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
    TResult Function(GetQcReports value)? getQcReports,
    TResult Function(RefreshQcReports value)? refreshQcReports,
    TResult Function(GetQcReportDetails value)? getQcReportDetails,
    TResult Function(DownloadQcReport value)? downloadQcReport,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetQcReports() when getQcReports != null:
        return getQcReports(_that);
      case RefreshQcReports() when refreshQcReports != null:
        return refreshQcReports(_that);
      case GetQcReportDetails() when getQcReportDetails != null:
        return getQcReportDetails(_that);
      case DownloadQcReport() when downloadQcReport != null:
        return downloadQcReport(_that);
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
    required TResult Function(GetQcReports value) getQcReports,
    required TResult Function(RefreshQcReports value) refreshQcReports,
    required TResult Function(GetQcReportDetails value) getQcReportDetails,
    required TResult Function(DownloadQcReport value) downloadQcReport,
  }) {
    final _that = this;
    switch (_that) {
      case GetQcReports():
        return getQcReports(_that);
      case RefreshQcReports():
        return refreshQcReports(_that);
      case GetQcReportDetails():
        return getQcReportDetails(_that);
      case DownloadQcReport():
        return downloadQcReport(_that);
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
    TResult? Function(GetQcReports value)? getQcReports,
    TResult? Function(RefreshQcReports value)? refreshQcReports,
    TResult? Function(GetQcReportDetails value)? getQcReportDetails,
    TResult? Function(DownloadQcReport value)? downloadQcReport,
  }) {
    final _that = this;
    switch (_that) {
      case GetQcReports() when getQcReports != null:
        return getQcReports(_that);
      case RefreshQcReports() when refreshQcReports != null:
        return refreshQcReports(_that);
      case GetQcReportDetails() when getQcReportDetails != null:
        return getQcReportDetails(_that);
      case DownloadQcReport() when downloadQcReport != null:
        return downloadQcReport(_that);
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
    TResult Function(bool call)? getQcReports,
    TResult Function()? refreshQcReports,
    TResult Function(String reportId)? getQcReportDetails,
    TResult Function(String reportId)? downloadQcReport,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetQcReports() when getQcReports != null:
        return getQcReports(_that.call);
      case RefreshQcReports() when refreshQcReports != null:
        return refreshQcReports();
      case GetQcReportDetails() when getQcReportDetails != null:
        return getQcReportDetails(_that.reportId);
      case DownloadQcReport() when downloadQcReport != null:
        return downloadQcReport(_that.reportId);
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
    required TResult Function(bool call) getQcReports,
    required TResult Function() refreshQcReports,
    required TResult Function(String reportId) getQcReportDetails,
    required TResult Function(String reportId) downloadQcReport,
  }) {
    final _that = this;
    switch (_that) {
      case GetQcReports():
        return getQcReports(_that.call);
      case RefreshQcReports():
        return refreshQcReports();
      case GetQcReportDetails():
        return getQcReportDetails(_that.reportId);
      case DownloadQcReport():
        return downloadQcReport(_that.reportId);
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
    TResult? Function(bool call)? getQcReports,
    TResult? Function()? refreshQcReports,
    TResult? Function(String reportId)? getQcReportDetails,
    TResult? Function(String reportId)? downloadQcReport,
  }) {
    final _that = this;
    switch (_that) {
      case GetQcReports() when getQcReports != null:
        return getQcReports(_that.call);
      case RefreshQcReports() when refreshQcReports != null:
        return refreshQcReports();
      case GetQcReportDetails() when getQcReportDetails != null:
        return getQcReportDetails(_that.reportId);
      case DownloadQcReport() when downloadQcReport != null:
        return downloadQcReport(_that.reportId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class GetQcReports implements QcEvent {
  const GetQcReports({required this.call});

  final bool call;

  /// Create a copy of QcEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetQcReportsCopyWith<GetQcReports> get copyWith =>
      _$GetQcReportsCopyWithImpl<GetQcReports>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetQcReports &&
            (identical(other.call, call) || other.call == call));
  }

  @override
  int get hashCode => Object.hash(runtimeType, call);

  @override
  String toString() {
    return 'QcEvent.getQcReports(call: $call)';
  }
}

/// @nodoc
abstract mixin class $GetQcReportsCopyWith<$Res>
    implements $QcEventCopyWith<$Res> {
  factory $GetQcReportsCopyWith(
          GetQcReports value, $Res Function(GetQcReports) _then) =
      _$GetQcReportsCopyWithImpl;
  @useResult
  $Res call({bool call});
}

/// @nodoc
class _$GetQcReportsCopyWithImpl<$Res> implements $GetQcReportsCopyWith<$Res> {
  _$GetQcReportsCopyWithImpl(this._self, this._then);

  final GetQcReports _self;
  final $Res Function(GetQcReports) _then;

  /// Create a copy of QcEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? call = null,
  }) {
    return _then(GetQcReports(
      call: null == call
          ? _self.call
          : call // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class RefreshQcReports implements QcEvent {
  const RefreshQcReports();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RefreshQcReports);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'QcEvent.refreshQcReports()';
  }
}

/// @nodoc

class GetQcReportDetails implements QcEvent {
  const GetQcReportDetails({required this.reportId});

  final String reportId;

  /// Create a copy of QcEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetQcReportDetailsCopyWith<GetQcReportDetails> get copyWith =>
      _$GetQcReportDetailsCopyWithImpl<GetQcReportDetails>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetQcReportDetails &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reportId);

  @override
  String toString() {
    return 'QcEvent.getQcReportDetails(reportId: $reportId)';
  }
}

/// @nodoc
abstract mixin class $GetQcReportDetailsCopyWith<$Res>
    implements $QcEventCopyWith<$Res> {
  factory $GetQcReportDetailsCopyWith(
          GetQcReportDetails value, $Res Function(GetQcReportDetails) _then) =
      _$GetQcReportDetailsCopyWithImpl;
  @useResult
  $Res call({String reportId});
}

/// @nodoc
class _$GetQcReportDetailsCopyWithImpl<$Res>
    implements $GetQcReportDetailsCopyWith<$Res> {
  _$GetQcReportDetailsCopyWithImpl(this._self, this._then);

  final GetQcReportDetails _self;
  final $Res Function(GetQcReportDetails) _then;

  /// Create a copy of QcEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reportId = null,
  }) {
    return _then(GetQcReportDetails(
      reportId: null == reportId
          ? _self.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class DownloadQcReport implements QcEvent {
  const DownloadQcReport({required this.reportId});

  final String reportId;

  /// Create a copy of QcEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DownloadQcReportCopyWith<DownloadQcReport> get copyWith =>
      _$DownloadQcReportCopyWithImpl<DownloadQcReport>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DownloadQcReport &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reportId);

  @override
  String toString() {
    return 'QcEvent.downloadQcReport(reportId: $reportId)';
  }
}

/// @nodoc
abstract mixin class $DownloadQcReportCopyWith<$Res>
    implements $QcEventCopyWith<$Res> {
  factory $DownloadQcReportCopyWith(
          DownloadQcReport value, $Res Function(DownloadQcReport) _then) =
      _$DownloadQcReportCopyWithImpl;
  @useResult
  $Res call({String reportId});
}

/// @nodoc
class _$DownloadQcReportCopyWithImpl<$Res>
    implements $DownloadQcReportCopyWith<$Res> {
  _$DownloadQcReportCopyWithImpl(this._self, this._then);

  final DownloadQcReport _self;
  final $Res Function(DownloadQcReport) _then;

  /// Create a copy of QcEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reportId = null,
  }) {
    return _then(DownloadQcReport(
      reportId: null == reportId
          ? _self.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$QcState {
  bool get isLoading;
  bool get qcOrdersRefreshLoading;
  bool get isLoadingDetail;
  bool get orderDetailError;
  bool get hasError;
  bool get isDownloadingReport;
  List<QcReport>? get qcReports;
  QcReportDetailResponse? get reportDetail;
  String? get qcReportUrl;
  String? get message;

  /// Create a copy of QcState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QcStateCopyWith<QcState> get copyWith =>
      _$QcStateCopyWithImpl<QcState>(this as QcState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QcState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.qcOrdersRefreshLoading, qcOrdersRefreshLoading) ||
                other.qcOrdersRefreshLoading == qcOrdersRefreshLoading) &&
            (identical(other.isLoadingDetail, isLoadingDetail) ||
                other.isLoadingDetail == isLoadingDetail) &&
            (identical(other.orderDetailError, orderDetailError) ||
                other.orderDetailError == orderDetailError) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.isDownloadingReport, isDownloadingReport) ||
                other.isDownloadingReport == isDownloadingReport) &&
            const DeepCollectionEquality().equals(other.qcReports, qcReports) &&
            (identical(other.reportDetail, reportDetail) ||
                other.reportDetail == reportDetail) &&
            (identical(other.qcReportUrl, qcReportUrl) ||
                other.qcReportUrl == qcReportUrl) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      qcOrdersRefreshLoading,
      isLoadingDetail,
      orderDetailError,
      hasError,
      isDownloadingReport,
      const DeepCollectionEquality().hash(qcReports),
      reportDetail,
      qcReportUrl,
      message);

  @override
  String toString() {
    return 'QcState(isLoading: $isLoading, qcOrdersRefreshLoading: $qcOrdersRefreshLoading, isLoadingDetail: $isLoadingDetail, orderDetailError: $orderDetailError, hasError: $hasError, isDownloadingReport: $isDownloadingReport, qcReports: $qcReports, reportDetail: $reportDetail, qcReportUrl: $qcReportUrl, message: $message)';
  }
}

/// @nodoc
abstract mixin class $QcStateCopyWith<$Res> {
  factory $QcStateCopyWith(QcState value, $Res Function(QcState) _then) =
      _$QcStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      bool qcOrdersRefreshLoading,
      bool isLoadingDetail,
      bool orderDetailError,
      bool hasError,
      bool isDownloadingReport,
      List<QcReport>? qcReports,
      QcReportDetailResponse? reportDetail,
      String? qcReportUrl,
      String? message});
}

/// @nodoc
class _$QcStateCopyWithImpl<$Res> implements $QcStateCopyWith<$Res> {
  _$QcStateCopyWithImpl(this._self, this._then);

  final QcState _self;
  final $Res Function(QcState) _then;

  /// Create a copy of QcState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? qcOrdersRefreshLoading = null,
    Object? isLoadingDetail = null,
    Object? orderDetailError = null,
    Object? hasError = null,
    Object? isDownloadingReport = null,
    Object? qcReports = freezed,
    Object? reportDetail = freezed,
    Object? qcReportUrl = freezed,
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      qcOrdersRefreshLoading: null == qcOrdersRefreshLoading
          ? _self.qcOrdersRefreshLoading
          : qcOrdersRefreshLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingDetail: null == isLoadingDetail
          ? _self.isLoadingDetail
          : isLoadingDetail // ignore: cast_nullable_to_non_nullable
              as bool,
      orderDetailError: null == orderDetailError
          ? _self.orderDetailError
          : orderDetailError // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _self.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isDownloadingReport: null == isDownloadingReport
          ? _self.isDownloadingReport
          : isDownloadingReport // ignore: cast_nullable_to_non_nullable
              as bool,
      qcReports: freezed == qcReports
          ? _self.qcReports
          : qcReports // ignore: cast_nullable_to_non_nullable
              as List<QcReport>?,
      reportDetail: freezed == reportDetail
          ? _self.reportDetail
          : reportDetail // ignore: cast_nullable_to_non_nullable
              as QcReportDetailResponse?,
      qcReportUrl: freezed == qcReportUrl
          ? _self.qcReportUrl
          : qcReportUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [QcState].
extension QcStatePatterns on QcState {
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
            bool qcOrdersRefreshLoading,
            bool isLoadingDetail,
            bool orderDetailError,
            bool hasError,
            bool isDownloadingReport,
            List<QcReport>? qcReports,
            QcReportDetailResponse? reportDetail,
            String? qcReportUrl,
            String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when $default != null:
        return $default(
            _that.isLoading,
            _that.qcOrdersRefreshLoading,
            _that.isLoadingDetail,
            _that.orderDetailError,
            _that.hasError,
            _that.isDownloadingReport,
            _that.qcReports,
            _that.reportDetail,
            _that.qcReportUrl,
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
            bool qcOrdersRefreshLoading,
            bool isLoadingDetail,
            bool orderDetailError,
            bool hasError,
            bool isDownloadingReport,
            List<QcReport>? qcReports,
            QcReportDetailResponse? reportDetail,
            String? qcReportUrl,
            String? message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return $default(
            _that.isLoading,
            _that.qcOrdersRefreshLoading,
            _that.isLoadingDetail,
            _that.orderDetailError,
            _that.hasError,
            _that.isDownloadingReport,
            _that.qcReports,
            _that.reportDetail,
            _that.qcReportUrl,
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
            bool qcOrdersRefreshLoading,
            bool isLoadingDetail,
            bool orderDetailError,
            bool hasError,
            bool isDownloadingReport,
            List<QcReport>? qcReports,
            QcReportDetailResponse? reportDetail,
            String? qcReportUrl,
            String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Initial() when $default != null:
        return $default(
            _that.isLoading,
            _that.qcOrdersRefreshLoading,
            _that.isLoadingDetail,
            _that.orderDetailError,
            _that.hasError,
            _that.isDownloadingReport,
            _that.qcReports,
            _that.reportDetail,
            _that.qcReportUrl,
            _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements QcState {
  const _Initial(
      {required this.isLoading,
      required this.qcOrdersRefreshLoading,
      required this.isLoadingDetail,
      required this.orderDetailError,
      required this.hasError,
      required this.isDownloadingReport,
      final List<QcReport>? qcReports,
      this.reportDetail,
      this.qcReportUrl,
      this.message})
      : _qcReports = qcReports;

  @override
  final bool isLoading;
  @override
  final bool qcOrdersRefreshLoading;
  @override
  final bool isLoadingDetail;
  @override
  final bool orderDetailError;
  @override
  final bool hasError;
  @override
  final bool isDownloadingReport;
  final List<QcReport>? _qcReports;
  @override
  List<QcReport>? get qcReports {
    final value = _qcReports;
    if (value == null) return null;
    if (_qcReports is EqualUnmodifiableListView) return _qcReports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final QcReportDetailResponse? reportDetail;
  @override
  final String? qcReportUrl;
  @override
  final String? message;

  /// Create a copy of QcState
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
            (identical(other.qcOrdersRefreshLoading, qcOrdersRefreshLoading) ||
                other.qcOrdersRefreshLoading == qcOrdersRefreshLoading) &&
            (identical(other.isLoadingDetail, isLoadingDetail) ||
                other.isLoadingDetail == isLoadingDetail) &&
            (identical(other.orderDetailError, orderDetailError) ||
                other.orderDetailError == orderDetailError) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.isDownloadingReport, isDownloadingReport) ||
                other.isDownloadingReport == isDownloadingReport) &&
            const DeepCollectionEquality()
                .equals(other._qcReports, _qcReports) &&
            (identical(other.reportDetail, reportDetail) ||
                other.reportDetail == reportDetail) &&
            (identical(other.qcReportUrl, qcReportUrl) ||
                other.qcReportUrl == qcReportUrl) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      qcOrdersRefreshLoading,
      isLoadingDetail,
      orderDetailError,
      hasError,
      isDownloadingReport,
      const DeepCollectionEquality().hash(_qcReports),
      reportDetail,
      qcReportUrl,
      message);

  @override
  String toString() {
    return 'QcState(isLoading: $isLoading, qcOrdersRefreshLoading: $qcOrdersRefreshLoading, isLoadingDetail: $isLoadingDetail, orderDetailError: $orderDetailError, hasError: $hasError, isDownloadingReport: $isDownloadingReport, qcReports: $qcReports, reportDetail: $reportDetail, qcReportUrl: $qcReportUrl, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $QcStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) =
      __$InitialCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool qcOrdersRefreshLoading,
      bool isLoadingDetail,
      bool orderDetailError,
      bool hasError,
      bool isDownloadingReport,
      List<QcReport>? qcReports,
      QcReportDetailResponse? reportDetail,
      String? qcReportUrl,
      String? message});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

  /// Create a copy of QcState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? qcOrdersRefreshLoading = null,
    Object? isLoadingDetail = null,
    Object? orderDetailError = null,
    Object? hasError = null,
    Object? isDownloadingReport = null,
    Object? qcReports = freezed,
    Object? reportDetail = freezed,
    Object? qcReportUrl = freezed,
    Object? message = freezed,
  }) {
    return _then(_Initial(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      qcOrdersRefreshLoading: null == qcOrdersRefreshLoading
          ? _self.qcOrdersRefreshLoading
          : qcOrdersRefreshLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingDetail: null == isLoadingDetail
          ? _self.isLoadingDetail
          : isLoadingDetail // ignore: cast_nullable_to_non_nullable
              as bool,
      orderDetailError: null == orderDetailError
          ? _self.orderDetailError
          : orderDetailError // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _self.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isDownloadingReport: null == isDownloadingReport
          ? _self.isDownloadingReport
          : isDownloadingReport // ignore: cast_nullable_to_non_nullable
              as bool,
      qcReports: freezed == qcReports
          ? _self._qcReports
          : qcReports // ignore: cast_nullable_to_non_nullable
              as List<QcReport>?,
      reportDetail: freezed == reportDetail
          ? _self.reportDetail
          : reportDetail // ignore: cast_nullable_to_non_nullable
              as QcReportDetailResponse?,
      qcReportUrl: freezed == qcReportUrl
          ? _self.qcReportUrl
          : qcReportUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
