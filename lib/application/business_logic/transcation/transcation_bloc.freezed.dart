// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transcation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TranscationEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TranscationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TranscationEvent()';
  }
}

/// @nodoc
class $TranscationEventCopyWith<$Res> {
  $TranscationEventCopyWith(
      TranscationEvent _, $Res Function(TranscationEvent) __);
}

/// Adds pattern-matching-related methods to [TranscationEvent].
extension TranscationEventPatterns on TranscationEvent {
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
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(AgreePolicy value)? agreePolicy,
    TResult Function(GetCreditedTranscations value)? getCreditedTranscations,
    TResult Function(GetDebitedTranscations value)? getDebitedTranscations,
    TResult Function(GetCreditedTranscationsNextPage value)?
        getCreditedTranscationsNextPage,
    TResult Function(GetDebitedTranscationsNextPage value)?
        getDebitedTranscationsNextPage,
    TResult Function(DownloadInvoice value)? downloadInvoice,
    TResult Function(MakePdf value)? makePdf,
    TResult Function(CalculateAmount value)? calculateAmount,
    TResult Function(GetManuelTransactions value)? getManuelTransactions,
    TResult Function(GetManuelTransactionsNext value)?
        getManuelTransactionsNext,
    TResult Function(UploadReciept value)? uploadReciept,
    TResult Function(MakeManuelTranscationRequest value)?
        makeManuelTranscationRequest,
    TResult Function(MakeEpaymetns value)? makeEpaymetns,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ChangeTab() when changeTab != null:
        return changeTab(_that);
      case AgreePolicy() when agreePolicy != null:
        return agreePolicy(_that);
      case GetCreditedTranscations() when getCreditedTranscations != null:
        return getCreditedTranscations(_that);
      case GetDebitedTranscations() when getDebitedTranscations != null:
        return getDebitedTranscations(_that);
      case GetCreditedTranscationsNextPage()
          when getCreditedTranscationsNextPage != null:
        return getCreditedTranscationsNextPage(_that);
      case GetDebitedTranscationsNextPage()
          when getDebitedTranscationsNextPage != null:
        return getDebitedTranscationsNextPage(_that);
      case DownloadInvoice() when downloadInvoice != null:
        return downloadInvoice(_that);
      case MakePdf() when makePdf != null:
        return makePdf(_that);
      case CalculateAmount() when calculateAmount != null:
        return calculateAmount(_that);
      case GetManuelTransactions() when getManuelTransactions != null:
        return getManuelTransactions(_that);
      case GetManuelTransactionsNext() when getManuelTransactionsNext != null:
        return getManuelTransactionsNext(_that);
      case UploadReciept() when uploadReciept != null:
        return uploadReciept(_that);
      case MakeManuelTranscationRequest()
          when makeManuelTranscationRequest != null:
        return makeManuelTranscationRequest(_that);
      case MakeEpaymetns() when makeEpaymetns != null:
        return makeEpaymetns(_that);
      case Reset() when reset != null:
        return reset(_that);
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
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(AgreePolicy value) agreePolicy,
    required TResult Function(GetCreditedTranscations value)
        getCreditedTranscations,
    required TResult Function(GetDebitedTranscations value)
        getDebitedTranscations,
    required TResult Function(GetCreditedTranscationsNextPage value)
        getCreditedTranscationsNextPage,
    required TResult Function(GetDebitedTranscationsNextPage value)
        getDebitedTranscationsNextPage,
    required TResult Function(DownloadInvoice value) downloadInvoice,
    required TResult Function(MakePdf value) makePdf,
    required TResult Function(CalculateAmount value) calculateAmount,
    required TResult Function(GetManuelTransactions value)
        getManuelTransactions,
    required TResult Function(GetManuelTransactionsNext value)
        getManuelTransactionsNext,
    required TResult Function(UploadReciept value) uploadReciept,
    required TResult Function(MakeManuelTranscationRequest value)
        makeManuelTranscationRequest,
    required TResult Function(MakeEpaymetns value) makeEpaymetns,
    required TResult Function(Reset value) reset,
  }) {
    final _that = this;
    switch (_that) {
      case ChangeTab():
        return changeTab(_that);
      case AgreePolicy():
        return agreePolicy(_that);
      case GetCreditedTranscations():
        return getCreditedTranscations(_that);
      case GetDebitedTranscations():
        return getDebitedTranscations(_that);
      case GetCreditedTranscationsNextPage():
        return getCreditedTranscationsNextPage(_that);
      case GetDebitedTranscationsNextPage():
        return getDebitedTranscationsNextPage(_that);
      case DownloadInvoice():
        return downloadInvoice(_that);
      case MakePdf():
        return makePdf(_that);
      case CalculateAmount():
        return calculateAmount(_that);
      case GetManuelTransactions():
        return getManuelTransactions(_that);
      case GetManuelTransactionsNext():
        return getManuelTransactionsNext(_that);
      case UploadReciept():
        return uploadReciept(_that);
      case MakeManuelTranscationRequest():
        return makeManuelTranscationRequest(_that);
      case MakeEpaymetns():
        return makeEpaymetns(_that);
      case Reset():
        return reset(_that);
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
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(AgreePolicy value)? agreePolicy,
    TResult? Function(GetCreditedTranscations value)? getCreditedTranscations,
    TResult? Function(GetDebitedTranscations value)? getDebitedTranscations,
    TResult? Function(GetCreditedTranscationsNextPage value)?
        getCreditedTranscationsNextPage,
    TResult? Function(GetDebitedTranscationsNextPage value)?
        getDebitedTranscationsNextPage,
    TResult? Function(DownloadInvoice value)? downloadInvoice,
    TResult? Function(MakePdf value)? makePdf,
    TResult? Function(CalculateAmount value)? calculateAmount,
    TResult? Function(GetManuelTransactions value)? getManuelTransactions,
    TResult? Function(GetManuelTransactionsNext value)?
        getManuelTransactionsNext,
    TResult? Function(UploadReciept value)? uploadReciept,
    TResult? Function(MakeManuelTranscationRequest value)?
        makeManuelTranscationRequest,
    TResult? Function(MakeEpaymetns value)? makeEpaymetns,
    TResult? Function(Reset value)? reset,
  }) {
    final _that = this;
    switch (_that) {
      case ChangeTab() when changeTab != null:
        return changeTab(_that);
      case AgreePolicy() when agreePolicy != null:
        return agreePolicy(_that);
      case GetCreditedTranscations() when getCreditedTranscations != null:
        return getCreditedTranscations(_that);
      case GetDebitedTranscations() when getDebitedTranscations != null:
        return getDebitedTranscations(_that);
      case GetCreditedTranscationsNextPage()
          when getCreditedTranscationsNextPage != null:
        return getCreditedTranscationsNextPage(_that);
      case GetDebitedTranscationsNextPage()
          when getDebitedTranscationsNextPage != null:
        return getDebitedTranscationsNextPage(_that);
      case DownloadInvoice() when downloadInvoice != null:
        return downloadInvoice(_that);
      case MakePdf() when makePdf != null:
        return makePdf(_that);
      case CalculateAmount() when calculateAmount != null:
        return calculateAmount(_that);
      case GetManuelTransactions() when getManuelTransactions != null:
        return getManuelTransactions(_that);
      case GetManuelTransactionsNext() when getManuelTransactionsNext != null:
        return getManuelTransactionsNext(_that);
      case UploadReciept() when uploadReciept != null:
        return uploadReciept(_that);
      case MakeManuelTranscationRequest()
          when makeManuelTranscationRequest != null:
        return makeManuelTranscationRequest(_that);
      case MakeEpaymetns() when makeEpaymetns != null:
        return makeEpaymetns(_that);
      case Reset() when reset != null:
        return reset(_that);
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
    TResult Function()? changeTab,
    TResult Function()? agreePolicy,
    TResult Function(bool call)? getCreditedTranscations,
    TResult Function(bool call)? getDebitedTranscations,
    TResult Function()? getCreditedTranscationsNextPage,
    TResult Function()? getDebitedTranscationsNextPage,
    TResult Function(String id)? downloadInvoice,
    TResult Function(String buffer)? makePdf,
    TResult Function(int coins, int coinValue, int gstValue)? calculateAmount,
    TResult Function(bool call)? getManuelTransactions,
    TResult Function()? getManuelTransactionsNext,
    TResult Function(bool cam)? uploadReciept,
    TResult Function(int gst, int coinValue)? makeManuelTranscationRequest,
    TResult Function(EpayModel epayModel)? makeEpaymetns,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ChangeTab() when changeTab != null:
        return changeTab();
      case AgreePolicy() when agreePolicy != null:
        return agreePolicy();
      case GetCreditedTranscations() when getCreditedTranscations != null:
        return getCreditedTranscations(_that.call);
      case GetDebitedTranscations() when getDebitedTranscations != null:
        return getDebitedTranscations(_that.call);
      case GetCreditedTranscationsNextPage()
          when getCreditedTranscationsNextPage != null:
        return getCreditedTranscationsNextPage();
      case GetDebitedTranscationsNextPage()
          when getDebitedTranscationsNextPage != null:
        return getDebitedTranscationsNextPage();
      case DownloadInvoice() when downloadInvoice != null:
        return downloadInvoice(_that.id);
      case MakePdf() when makePdf != null:
        return makePdf(_that.buffer);
      case CalculateAmount() when calculateAmount != null:
        return calculateAmount(_that.coins, _that.coinValue, _that.gstValue);
      case GetManuelTransactions() when getManuelTransactions != null:
        return getManuelTransactions(_that.call);
      case GetManuelTransactionsNext() when getManuelTransactionsNext != null:
        return getManuelTransactionsNext();
      case UploadReciept() when uploadReciept != null:
        return uploadReciept(_that.cam);
      case MakeManuelTranscationRequest()
          when makeManuelTranscationRequest != null:
        return makeManuelTranscationRequest(_that.gst, _that.coinValue);
      case MakeEpaymetns() when makeEpaymetns != null:
        return makeEpaymetns(_that.epayModel);
      case Reset() when reset != null:
        return reset();
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
    required TResult Function() changeTab,
    required TResult Function() agreePolicy,
    required TResult Function(bool call) getCreditedTranscations,
    required TResult Function(bool call) getDebitedTranscations,
    required TResult Function() getCreditedTranscationsNextPage,
    required TResult Function() getDebitedTranscationsNextPage,
    required TResult Function(String id) downloadInvoice,
    required TResult Function(String buffer) makePdf,
    required TResult Function(int coins, int coinValue, int gstValue)
        calculateAmount,
    required TResult Function(bool call) getManuelTransactions,
    required TResult Function() getManuelTransactionsNext,
    required TResult Function(bool cam) uploadReciept,
    required TResult Function(int gst, int coinValue)
        makeManuelTranscationRequest,
    required TResult Function(EpayModel epayModel) makeEpaymetns,
    required TResult Function() reset,
  }) {
    final _that = this;
    switch (_that) {
      case ChangeTab():
        return changeTab();
      case AgreePolicy():
        return agreePolicy();
      case GetCreditedTranscations():
        return getCreditedTranscations(_that.call);
      case GetDebitedTranscations():
        return getDebitedTranscations(_that.call);
      case GetCreditedTranscationsNextPage():
        return getCreditedTranscationsNextPage();
      case GetDebitedTranscationsNextPage():
        return getDebitedTranscationsNextPage();
      case DownloadInvoice():
        return downloadInvoice(_that.id);
      case MakePdf():
        return makePdf(_that.buffer);
      case CalculateAmount():
        return calculateAmount(_that.coins, _that.coinValue, _that.gstValue);
      case GetManuelTransactions():
        return getManuelTransactions(_that.call);
      case GetManuelTransactionsNext():
        return getManuelTransactionsNext();
      case UploadReciept():
        return uploadReciept(_that.cam);
      case MakeManuelTranscationRequest():
        return makeManuelTranscationRequest(_that.gst, _that.coinValue);
      case MakeEpaymetns():
        return makeEpaymetns(_that.epayModel);
      case Reset():
        return reset();
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
    TResult? Function()? changeTab,
    TResult? Function()? agreePolicy,
    TResult? Function(bool call)? getCreditedTranscations,
    TResult? Function(bool call)? getDebitedTranscations,
    TResult? Function()? getCreditedTranscationsNextPage,
    TResult? Function()? getDebitedTranscationsNextPage,
    TResult? Function(String id)? downloadInvoice,
    TResult? Function(String buffer)? makePdf,
    TResult? Function(int coins, int coinValue, int gstValue)? calculateAmount,
    TResult? Function(bool call)? getManuelTransactions,
    TResult? Function()? getManuelTransactionsNext,
    TResult? Function(bool cam)? uploadReciept,
    TResult? Function(int gst, int coinValue)? makeManuelTranscationRequest,
    TResult? Function(EpayModel epayModel)? makeEpaymetns,
    TResult? Function()? reset,
  }) {
    final _that = this;
    switch (_that) {
      case ChangeTab() when changeTab != null:
        return changeTab();
      case AgreePolicy() when agreePolicy != null:
        return agreePolicy();
      case GetCreditedTranscations() when getCreditedTranscations != null:
        return getCreditedTranscations(_that.call);
      case GetDebitedTranscations() when getDebitedTranscations != null:
        return getDebitedTranscations(_that.call);
      case GetCreditedTranscationsNextPage()
          when getCreditedTranscationsNextPage != null:
        return getCreditedTranscationsNextPage();
      case GetDebitedTranscationsNextPage()
          when getDebitedTranscationsNextPage != null:
        return getDebitedTranscationsNextPage();
      case DownloadInvoice() when downloadInvoice != null:
        return downloadInvoice(_that.id);
      case MakePdf() when makePdf != null:
        return makePdf(_that.buffer);
      case CalculateAmount() when calculateAmount != null:
        return calculateAmount(_that.coins, _that.coinValue, _that.gstValue);
      case GetManuelTransactions() when getManuelTransactions != null:
        return getManuelTransactions(_that.call);
      case GetManuelTransactionsNext() when getManuelTransactionsNext != null:
        return getManuelTransactionsNext();
      case UploadReciept() when uploadReciept != null:
        return uploadReciept(_that.cam);
      case MakeManuelTranscationRequest()
          when makeManuelTranscationRequest != null:
        return makeManuelTranscationRequest(_that.gst, _that.coinValue);
      case MakeEpaymetns() when makeEpaymetns != null:
        return makeEpaymetns(_that.epayModel);
      case Reset() when reset != null:
        return reset();
      case _:
        return null;
    }
  }
}

/// @nodoc

class ChangeTab implements TranscationEvent {
  const ChangeTab();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ChangeTab);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TranscationEvent.changeTab()';
  }
}

/// @nodoc

class AgreePolicy implements TranscationEvent {
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
    return 'TranscationEvent.agreePolicy()';
  }
}

/// @nodoc

class GetCreditedTranscations implements TranscationEvent {
  const GetCreditedTranscations({required this.call});

  final bool call;

  /// Create a copy of TranscationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetCreditedTranscationsCopyWith<GetCreditedTranscations> get copyWith =>
      _$GetCreditedTranscationsCopyWithImpl<GetCreditedTranscations>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetCreditedTranscations &&
            (identical(other.call, call) || other.call == call));
  }

  @override
  int get hashCode => Object.hash(runtimeType, call);

  @override
  String toString() {
    return 'TranscationEvent.getCreditedTranscations(call: $call)';
  }
}

/// @nodoc
abstract mixin class $GetCreditedTranscationsCopyWith<$Res>
    implements $TranscationEventCopyWith<$Res> {
  factory $GetCreditedTranscationsCopyWith(GetCreditedTranscations value,
          $Res Function(GetCreditedTranscations) _then) =
      _$GetCreditedTranscationsCopyWithImpl;
  @useResult
  $Res call({bool call});
}

/// @nodoc
class _$GetCreditedTranscationsCopyWithImpl<$Res>
    implements $GetCreditedTranscationsCopyWith<$Res> {
  _$GetCreditedTranscationsCopyWithImpl(this._self, this._then);

  final GetCreditedTranscations _self;
  final $Res Function(GetCreditedTranscations) _then;

  /// Create a copy of TranscationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? call = null,
  }) {
    return _then(GetCreditedTranscations(
      call: null == call
          ? _self.call
          : call // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class GetDebitedTranscations implements TranscationEvent {
  const GetDebitedTranscations({required this.call});

  final bool call;

  /// Create a copy of TranscationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetDebitedTranscationsCopyWith<GetDebitedTranscations> get copyWith =>
      _$GetDebitedTranscationsCopyWithImpl<GetDebitedTranscations>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetDebitedTranscations &&
            (identical(other.call, call) || other.call == call));
  }

  @override
  int get hashCode => Object.hash(runtimeType, call);

  @override
  String toString() {
    return 'TranscationEvent.getDebitedTranscations(call: $call)';
  }
}

/// @nodoc
abstract mixin class $GetDebitedTranscationsCopyWith<$Res>
    implements $TranscationEventCopyWith<$Res> {
  factory $GetDebitedTranscationsCopyWith(GetDebitedTranscations value,
          $Res Function(GetDebitedTranscations) _then) =
      _$GetDebitedTranscationsCopyWithImpl;
  @useResult
  $Res call({bool call});
}

/// @nodoc
class _$GetDebitedTranscationsCopyWithImpl<$Res>
    implements $GetDebitedTranscationsCopyWith<$Res> {
  _$GetDebitedTranscationsCopyWithImpl(this._self, this._then);

  final GetDebitedTranscations _self;
  final $Res Function(GetDebitedTranscations) _then;

  /// Create a copy of TranscationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? call = null,
  }) {
    return _then(GetDebitedTranscations(
      call: null == call
          ? _self.call
          : call // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class GetCreditedTranscationsNextPage implements TranscationEvent {
  const GetCreditedTranscationsNextPage();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetCreditedTranscationsNextPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TranscationEvent.getCreditedTranscationsNextPage()';
  }
}

/// @nodoc

class GetDebitedTranscationsNextPage implements TranscationEvent {
  const GetDebitedTranscationsNextPage();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetDebitedTranscationsNextPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TranscationEvent.getDebitedTranscationsNextPage()';
  }
}

/// @nodoc

class DownloadInvoice implements TranscationEvent {
  const DownloadInvoice({required this.id});

  final String id;

  /// Create a copy of TranscationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DownloadInvoiceCopyWith<DownloadInvoice> get copyWith =>
      _$DownloadInvoiceCopyWithImpl<DownloadInvoice>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DownloadInvoice &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'TranscationEvent.downloadInvoice(id: $id)';
  }
}

/// @nodoc
abstract mixin class $DownloadInvoiceCopyWith<$Res>
    implements $TranscationEventCopyWith<$Res> {
  factory $DownloadInvoiceCopyWith(
          DownloadInvoice value, $Res Function(DownloadInvoice) _then) =
      _$DownloadInvoiceCopyWithImpl;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$DownloadInvoiceCopyWithImpl<$Res>
    implements $DownloadInvoiceCopyWith<$Res> {
  _$DownloadInvoiceCopyWithImpl(this._self, this._then);

  final DownloadInvoice _self;
  final $Res Function(DownloadInvoice) _then;

  /// Create a copy of TranscationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(DownloadInvoice(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class MakePdf implements TranscationEvent {
  const MakePdf({required this.buffer});

  final String buffer;

  /// Create a copy of TranscationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MakePdfCopyWith<MakePdf> get copyWith =>
      _$MakePdfCopyWithImpl<MakePdf>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MakePdf &&
            (identical(other.buffer, buffer) || other.buffer == buffer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, buffer);

  @override
  String toString() {
    return 'TranscationEvent.makePdf(buffer: $buffer)';
  }
}

/// @nodoc
abstract mixin class $MakePdfCopyWith<$Res>
    implements $TranscationEventCopyWith<$Res> {
  factory $MakePdfCopyWith(MakePdf value, $Res Function(MakePdf) _then) =
      _$MakePdfCopyWithImpl;
  @useResult
  $Res call({String buffer});
}

/// @nodoc
class _$MakePdfCopyWithImpl<$Res> implements $MakePdfCopyWith<$Res> {
  _$MakePdfCopyWithImpl(this._self, this._then);

  final MakePdf _self;
  final $Res Function(MakePdf) _then;

  /// Create a copy of TranscationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? buffer = null,
  }) {
    return _then(MakePdf(
      buffer: null == buffer
          ? _self.buffer
          : buffer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class CalculateAmount implements TranscationEvent {
  const CalculateAmount(
      {required this.coins, required this.coinValue, required this.gstValue});

  final int coins;
  final int coinValue;
  final int gstValue;

  /// Create a copy of TranscationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CalculateAmountCopyWith<CalculateAmount> get copyWith =>
      _$CalculateAmountCopyWithImpl<CalculateAmount>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalculateAmount &&
            (identical(other.coins, coins) || other.coins == coins) &&
            (identical(other.coinValue, coinValue) ||
                other.coinValue == coinValue) &&
            (identical(other.gstValue, gstValue) ||
                other.gstValue == gstValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coins, coinValue, gstValue);

  @override
  String toString() {
    return 'TranscationEvent.calculateAmount(coins: $coins, coinValue: $coinValue, gstValue: $gstValue)';
  }
}

/// @nodoc
abstract mixin class $CalculateAmountCopyWith<$Res>
    implements $TranscationEventCopyWith<$Res> {
  factory $CalculateAmountCopyWith(
          CalculateAmount value, $Res Function(CalculateAmount) _then) =
      _$CalculateAmountCopyWithImpl;
  @useResult
  $Res call({int coins, int coinValue, int gstValue});
}

/// @nodoc
class _$CalculateAmountCopyWithImpl<$Res>
    implements $CalculateAmountCopyWith<$Res> {
  _$CalculateAmountCopyWithImpl(this._self, this._then);

  final CalculateAmount _self;
  final $Res Function(CalculateAmount) _then;

  /// Create a copy of TranscationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? coins = null,
    Object? coinValue = null,
    Object? gstValue = null,
  }) {
    return _then(CalculateAmount(
      coins: null == coins
          ? _self.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
      coinValue: null == coinValue
          ? _self.coinValue
          : coinValue // ignore: cast_nullable_to_non_nullable
              as int,
      gstValue: null == gstValue
          ? _self.gstValue
          : gstValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class GetManuelTransactions implements TranscationEvent {
  const GetManuelTransactions({required this.call});

  final bool call;

  /// Create a copy of TranscationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetManuelTransactionsCopyWith<GetManuelTransactions> get copyWith =>
      _$GetManuelTransactionsCopyWithImpl<GetManuelTransactions>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetManuelTransactions &&
            (identical(other.call, call) || other.call == call));
  }

  @override
  int get hashCode => Object.hash(runtimeType, call);

  @override
  String toString() {
    return 'TranscationEvent.getManuelTransactions(call: $call)';
  }
}

/// @nodoc
abstract mixin class $GetManuelTransactionsCopyWith<$Res>
    implements $TranscationEventCopyWith<$Res> {
  factory $GetManuelTransactionsCopyWith(GetManuelTransactions value,
          $Res Function(GetManuelTransactions) _then) =
      _$GetManuelTransactionsCopyWithImpl;
  @useResult
  $Res call({bool call});
}

/// @nodoc
class _$GetManuelTransactionsCopyWithImpl<$Res>
    implements $GetManuelTransactionsCopyWith<$Res> {
  _$GetManuelTransactionsCopyWithImpl(this._self, this._then);

  final GetManuelTransactions _self;
  final $Res Function(GetManuelTransactions) _then;

  /// Create a copy of TranscationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? call = null,
  }) {
    return _then(GetManuelTransactions(
      call: null == call
          ? _self.call
          : call // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class GetManuelTransactionsNext implements TranscationEvent {
  const GetManuelTransactionsNext();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetManuelTransactionsNext);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TranscationEvent.getManuelTransactionsNext()';
  }
}

/// @nodoc

class UploadReciept implements TranscationEvent {
  const UploadReciept({required this.cam});

  final bool cam;

  /// Create a copy of TranscationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UploadRecieptCopyWith<UploadReciept> get copyWith =>
      _$UploadRecieptCopyWithImpl<UploadReciept>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadReciept &&
            (identical(other.cam, cam) || other.cam == cam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cam);

  @override
  String toString() {
    return 'TranscationEvent.uploadReciept(cam: $cam)';
  }
}

/// @nodoc
abstract mixin class $UploadRecieptCopyWith<$Res>
    implements $TranscationEventCopyWith<$Res> {
  factory $UploadRecieptCopyWith(
          UploadReciept value, $Res Function(UploadReciept) _then) =
      _$UploadRecieptCopyWithImpl;
  @useResult
  $Res call({bool cam});
}

/// @nodoc
class _$UploadRecieptCopyWithImpl<$Res>
    implements $UploadRecieptCopyWith<$Res> {
  _$UploadRecieptCopyWithImpl(this._self, this._then);

  final UploadReciept _self;
  final $Res Function(UploadReciept) _then;

  /// Create a copy of TranscationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cam = null,
  }) {
    return _then(UploadReciept(
      cam: null == cam
          ? _self.cam
          : cam // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class MakeManuelTranscationRequest implements TranscationEvent {
  const MakeManuelTranscationRequest(
      {required this.gst, required this.coinValue});

  final int gst;
  final int coinValue;

  /// Create a copy of TranscationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MakeManuelTranscationRequestCopyWith<MakeManuelTranscationRequest>
      get copyWith => _$MakeManuelTranscationRequestCopyWithImpl<
          MakeManuelTranscationRequest>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MakeManuelTranscationRequest &&
            (identical(other.gst, gst) || other.gst == gst) &&
            (identical(other.coinValue, coinValue) ||
                other.coinValue == coinValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gst, coinValue);

  @override
  String toString() {
    return 'TranscationEvent.makeManuelTranscationRequest(gst: $gst, coinValue: $coinValue)';
  }
}

/// @nodoc
abstract mixin class $MakeManuelTranscationRequestCopyWith<$Res>
    implements $TranscationEventCopyWith<$Res> {
  factory $MakeManuelTranscationRequestCopyWith(
          MakeManuelTranscationRequest value,
          $Res Function(MakeManuelTranscationRequest) _then) =
      _$MakeManuelTranscationRequestCopyWithImpl;
  @useResult
  $Res call({int gst, int coinValue});
}

/// @nodoc
class _$MakeManuelTranscationRequestCopyWithImpl<$Res>
    implements $MakeManuelTranscationRequestCopyWith<$Res> {
  _$MakeManuelTranscationRequestCopyWithImpl(this._self, this._then);

  final MakeManuelTranscationRequest _self;
  final $Res Function(MakeManuelTranscationRequest) _then;

  /// Create a copy of TranscationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? gst = null,
    Object? coinValue = null,
  }) {
    return _then(MakeManuelTranscationRequest(
      gst: null == gst
          ? _self.gst
          : gst // ignore: cast_nullable_to_non_nullable
              as int,
      coinValue: null == coinValue
          ? _self.coinValue
          : coinValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class MakeEpaymetns implements TranscationEvent {
  const MakeEpaymetns({required this.epayModel});

  final EpayModel epayModel;

  /// Create a copy of TranscationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MakeEpaymetnsCopyWith<MakeEpaymetns> get copyWith =>
      _$MakeEpaymetnsCopyWithImpl<MakeEpaymetns>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MakeEpaymetns &&
            (identical(other.epayModel, epayModel) ||
                other.epayModel == epayModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, epayModel);

  @override
  String toString() {
    return 'TranscationEvent.makeEpaymetns(epayModel: $epayModel)';
  }
}

/// @nodoc
abstract mixin class $MakeEpaymetnsCopyWith<$Res>
    implements $TranscationEventCopyWith<$Res> {
  factory $MakeEpaymetnsCopyWith(
          MakeEpaymetns value, $Res Function(MakeEpaymetns) _then) =
      _$MakeEpaymetnsCopyWithImpl;
  @useResult
  $Res call({EpayModel epayModel});
}

/// @nodoc
class _$MakeEpaymetnsCopyWithImpl<$Res>
    implements $MakeEpaymetnsCopyWith<$Res> {
  _$MakeEpaymetnsCopyWithImpl(this._self, this._then);

  final MakeEpaymetns _self;
  final $Res Function(MakeEpaymetns) _then;

  /// Create a copy of TranscationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? epayModel = null,
  }) {
    return _then(MakeEpaymetns(
      epayModel: null == epayModel
          ? _self.epayModel
          : epayModel // ignore: cast_nullable_to_non_nullable
              as EpayModel,
    ));
  }
}

/// @nodoc

class Reset implements TranscationEvent {
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
    return 'TranscationEvent.reset()';
  }
}

/// @nodoc
mixin _$TranscationState {
  bool get hasError;
  bool get isLoading;
  bool get creditedLoading;
  bool get manuelTranscationsLoading;
  bool get manuelTranscationDone;
  bool get debitedLoading;
  bool get downloading;
  bool get downloaded;
  bool get agreePolicys;
  bool get gstError;
  bool get paymentLoading;
  bool get paymetnDone;
  List<Transcation>? get creditedTranscations;
  List<Transcation>? get debitedTranscations;
  List<TranscationCashModel>? get manuelTranscations;
  String? get message;
  String? get invoice;
  ImageModel? get reciept;
  double? get amountPayable;
  bool get isCreditedTab;

  /// Create a copy of TranscationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TranscationStateCopyWith<TranscationState> get copyWith =>
      _$TranscationStateCopyWithImpl<TranscationState>(
          this as TranscationState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TranscationState &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.creditedLoading, creditedLoading) ||
                other.creditedLoading == creditedLoading) &&
            (identical(other.manuelTranscationsLoading,
                    manuelTranscationsLoading) ||
                other.manuelTranscationsLoading == manuelTranscationsLoading) &&
            (identical(other.manuelTranscationDone, manuelTranscationDone) ||
                other.manuelTranscationDone == manuelTranscationDone) &&
            (identical(other.debitedLoading, debitedLoading) ||
                other.debitedLoading == debitedLoading) &&
            (identical(other.downloading, downloading) ||
                other.downloading == downloading) &&
            (identical(other.downloaded, downloaded) ||
                other.downloaded == downloaded) &&
            (identical(other.agreePolicys, agreePolicys) ||
                other.agreePolicys == agreePolicys) &&
            (identical(other.gstError, gstError) ||
                other.gstError == gstError) &&
            (identical(other.paymentLoading, paymentLoading) ||
                other.paymentLoading == paymentLoading) &&
            (identical(other.paymetnDone, paymetnDone) ||
                other.paymetnDone == paymetnDone) &&
            const DeepCollectionEquality()
                .equals(other.creditedTranscations, creditedTranscations) &&
            const DeepCollectionEquality()
                .equals(other.debitedTranscations, debitedTranscations) &&
            const DeepCollectionEquality()
                .equals(other.manuelTranscations, manuelTranscations) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            (identical(other.reciept, reciept) || other.reciept == reciept) &&
            (identical(other.amountPayable, amountPayable) ||
                other.amountPayable == amountPayable) &&
            (identical(other.isCreditedTab, isCreditedTab) ||
                other.isCreditedTab == isCreditedTab));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        hasError,
        isLoading,
        creditedLoading,
        manuelTranscationsLoading,
        manuelTranscationDone,
        debitedLoading,
        downloading,
        downloaded,
        agreePolicys,
        gstError,
        paymentLoading,
        paymetnDone,
        const DeepCollectionEquality().hash(creditedTranscations),
        const DeepCollectionEquality().hash(debitedTranscations),
        const DeepCollectionEquality().hash(manuelTranscations),
        message,
        invoice,
        reciept,
        amountPayable,
        isCreditedTab
      ]);

  @override
  String toString() {
    return 'TranscationState(hasError: $hasError, isLoading: $isLoading, creditedLoading: $creditedLoading, manuelTranscationsLoading: $manuelTranscationsLoading, manuelTranscationDone: $manuelTranscationDone, debitedLoading: $debitedLoading, downloading: $downloading, downloaded: $downloaded, agreePolicys: $agreePolicys, gstError: $gstError, paymentLoading: $paymentLoading, paymetnDone: $paymetnDone, creditedTranscations: $creditedTranscations, debitedTranscations: $debitedTranscations, manuelTranscations: $manuelTranscations, message: $message, invoice: $invoice, reciept: $reciept, amountPayable: $amountPayable, isCreditedTab: $isCreditedTab)';
  }
}

/// @nodoc
abstract mixin class $TranscationStateCopyWith<$Res> {
  factory $TranscationStateCopyWith(
          TranscationState value, $Res Function(TranscationState) _then) =
      _$TranscationStateCopyWithImpl;
  @useResult
  $Res call(
      {bool hasError,
      bool isLoading,
      bool creditedLoading,
      bool manuelTranscationsLoading,
      bool manuelTranscationDone,
      bool debitedLoading,
      bool downloading,
      bool downloaded,
      bool agreePolicys,
      bool gstError,
      bool paymentLoading,
      bool paymetnDone,
      List<Transcation>? creditedTranscations,
      List<Transcation>? debitedTranscations,
      List<TranscationCashModel>? manuelTranscations,
      String? message,
      String? invoice,
      ImageModel? reciept,
      double? amountPayable,
      bool isCreditedTab});
}

/// @nodoc
class _$TranscationStateCopyWithImpl<$Res>
    implements $TranscationStateCopyWith<$Res> {
  _$TranscationStateCopyWithImpl(this._self, this._then);

  final TranscationState _self;
  final $Res Function(TranscationState) _then;

  /// Create a copy of TranscationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasError = null,
    Object? isLoading = null,
    Object? creditedLoading = null,
    Object? manuelTranscationsLoading = null,
    Object? manuelTranscationDone = null,
    Object? debitedLoading = null,
    Object? downloading = null,
    Object? downloaded = null,
    Object? agreePolicys = null,
    Object? gstError = null,
    Object? paymentLoading = null,
    Object? paymetnDone = null,
    Object? creditedTranscations = freezed,
    Object? debitedTranscations = freezed,
    Object? manuelTranscations = freezed,
    Object? message = freezed,
    Object? invoice = freezed,
    Object? reciept = freezed,
    Object? amountPayable = freezed,
    Object? isCreditedTab = null,
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
      creditedLoading: null == creditedLoading
          ? _self.creditedLoading
          : creditedLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      manuelTranscationsLoading: null == manuelTranscationsLoading
          ? _self.manuelTranscationsLoading
          : manuelTranscationsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      manuelTranscationDone: null == manuelTranscationDone
          ? _self.manuelTranscationDone
          : manuelTranscationDone // ignore: cast_nullable_to_non_nullable
              as bool,
      debitedLoading: null == debitedLoading
          ? _self.debitedLoading
          : debitedLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloading: null == downloading
          ? _self.downloading
          : downloading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloaded: null == downloaded
          ? _self.downloaded
          : downloaded // ignore: cast_nullable_to_non_nullable
              as bool,
      agreePolicys: null == agreePolicys
          ? _self.agreePolicys
          : agreePolicys // ignore: cast_nullable_to_non_nullable
              as bool,
      gstError: null == gstError
          ? _self.gstError
          : gstError // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentLoading: null == paymentLoading
          ? _self.paymentLoading
          : paymentLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      paymetnDone: null == paymetnDone
          ? _self.paymetnDone
          : paymetnDone // ignore: cast_nullable_to_non_nullable
              as bool,
      creditedTranscations: freezed == creditedTranscations
          ? _self.creditedTranscations
          : creditedTranscations // ignore: cast_nullable_to_non_nullable
              as List<Transcation>?,
      debitedTranscations: freezed == debitedTranscations
          ? _self.debitedTranscations
          : debitedTranscations // ignore: cast_nullable_to_non_nullable
              as List<Transcation>?,
      manuelTranscations: freezed == manuelTranscations
          ? _self.manuelTranscations
          : manuelTranscations // ignore: cast_nullable_to_non_nullable
              as List<TranscationCashModel>?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      invoice: freezed == invoice
          ? _self.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as String?,
      reciept: freezed == reciept
          ? _self.reciept
          : reciept // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      amountPayable: freezed == amountPayable
          ? _self.amountPayable
          : amountPayable // ignore: cast_nullable_to_non_nullable
              as double?,
      isCreditedTab: null == isCreditedTab
          ? _self.isCreditedTab
          : isCreditedTab // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [TranscationState].
extension TranscationStatePatterns on TranscationState {
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
            bool hasError,
            bool isLoading,
            bool creditedLoading,
            bool manuelTranscationsLoading,
            bool manuelTranscationDone,
            bool debitedLoading,
            bool downloading,
            bool downloaded,
            bool agreePolicys,
            bool gstError,
            bool paymentLoading,
            bool paymetnDone,
            List<Transcation>? creditedTranscations,
            List<Transcation>? debitedTranscations,
            List<TranscationCashModel>? manuelTranscations,
            String? message,
            String? invoice,
            ImageModel? reciept,
            double? amountPayable,
            bool isCreditedTab)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when $default != null:
        return $default(
            _that.hasError,
            _that.isLoading,
            _that.creditedLoading,
            _that.manuelTranscationsLoading,
            _that.manuelTranscationDone,
            _that.debitedLoading,
            _that.downloading,
            _that.downloaded,
            _that.agreePolicys,
            _that.gstError,
            _that.paymentLoading,
            _that.paymetnDone,
            _that.creditedTranscations,
            _that.debitedTranscations,
            _that.manuelTranscations,
            _that.message,
            _that.invoice,
            _that.reciept,
            _that.amountPayable,
            _that.isCreditedTab);
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
            bool hasError,
            bool isLoading,
            bool creditedLoading,
            bool manuelTranscationsLoading,
            bool manuelTranscationDone,
            bool debitedLoading,
            bool downloading,
            bool downloaded,
            bool agreePolicys,
            bool gstError,
            bool paymentLoading,
            bool paymetnDone,
            List<Transcation>? creditedTranscations,
            List<Transcation>? debitedTranscations,
            List<TranscationCashModel>? manuelTranscations,
            String? message,
            String? invoice,
            ImageModel? reciept,
            double? amountPayable,
            bool isCreditedTab)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return $default(
            _that.hasError,
            _that.isLoading,
            _that.creditedLoading,
            _that.manuelTranscationsLoading,
            _that.manuelTranscationDone,
            _that.debitedLoading,
            _that.downloading,
            _that.downloaded,
            _that.agreePolicys,
            _that.gstError,
            _that.paymentLoading,
            _that.paymetnDone,
            _that.creditedTranscations,
            _that.debitedTranscations,
            _that.manuelTranscations,
            _that.message,
            _that.invoice,
            _that.reciept,
            _that.amountPayable,
            _that.isCreditedTab);
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
            bool hasError,
            bool isLoading,
            bool creditedLoading,
            bool manuelTranscationsLoading,
            bool manuelTranscationDone,
            bool debitedLoading,
            bool downloading,
            bool downloaded,
            bool agreePolicys,
            bool gstError,
            bool paymentLoading,
            bool paymetnDone,
            List<Transcation>? creditedTranscations,
            List<Transcation>? debitedTranscations,
            List<TranscationCashModel>? manuelTranscations,
            String? message,
            String? invoice,
            ImageModel? reciept,
            double? amountPayable,
            bool isCreditedTab)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Initial() when $default != null:
        return $default(
            _that.hasError,
            _that.isLoading,
            _that.creditedLoading,
            _that.manuelTranscationsLoading,
            _that.manuelTranscationDone,
            _that.debitedLoading,
            _that.downloading,
            _that.downloaded,
            _that.agreePolicys,
            _that.gstError,
            _that.paymentLoading,
            _that.paymetnDone,
            _that.creditedTranscations,
            _that.debitedTranscations,
            _that.manuelTranscations,
            _that.message,
            _that.invoice,
            _that.reciept,
            _that.amountPayable,
            _that.isCreditedTab);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements TranscationState {
  const _Initial(
      {required this.hasError,
      required this.isLoading,
      required this.creditedLoading,
      required this.manuelTranscationsLoading,
      required this.manuelTranscationDone,
      required this.debitedLoading,
      required this.downloading,
      required this.downloaded,
      required this.agreePolicys,
      required this.gstError,
      required this.paymentLoading,
      required this.paymetnDone,
      final List<Transcation>? creditedTranscations,
      final List<Transcation>? debitedTranscations,
      final List<TranscationCashModel>? manuelTranscations,
      this.message,
      this.invoice,
      this.reciept,
      this.amountPayable,
      required this.isCreditedTab})
      : _creditedTranscations = creditedTranscations,
        _debitedTranscations = debitedTranscations,
        _manuelTranscations = manuelTranscations;

  @override
  final bool hasError;
  @override
  final bool isLoading;
  @override
  final bool creditedLoading;
  @override
  final bool manuelTranscationsLoading;
  @override
  final bool manuelTranscationDone;
  @override
  final bool debitedLoading;
  @override
  final bool downloading;
  @override
  final bool downloaded;
  @override
  final bool agreePolicys;
  @override
  final bool gstError;
  @override
  final bool paymentLoading;
  @override
  final bool paymetnDone;
  final List<Transcation>? _creditedTranscations;
  @override
  List<Transcation>? get creditedTranscations {
    final value = _creditedTranscations;
    if (value == null) return null;
    if (_creditedTranscations is EqualUnmodifiableListView)
      return _creditedTranscations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Transcation>? _debitedTranscations;
  @override
  List<Transcation>? get debitedTranscations {
    final value = _debitedTranscations;
    if (value == null) return null;
    if (_debitedTranscations is EqualUnmodifiableListView)
      return _debitedTranscations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TranscationCashModel>? _manuelTranscations;
  @override
  List<TranscationCashModel>? get manuelTranscations {
    final value = _manuelTranscations;
    if (value == null) return null;
    if (_manuelTranscations is EqualUnmodifiableListView)
      return _manuelTranscations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? message;
  @override
  final String? invoice;
  @override
  final ImageModel? reciept;
  @override
  final double? amountPayable;
  @override
  final bool isCreditedTab;

  /// Create a copy of TranscationState
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
            (identical(other.creditedLoading, creditedLoading) ||
                other.creditedLoading == creditedLoading) &&
            (identical(other.manuelTranscationsLoading,
                    manuelTranscationsLoading) ||
                other.manuelTranscationsLoading == manuelTranscationsLoading) &&
            (identical(other.manuelTranscationDone, manuelTranscationDone) ||
                other.manuelTranscationDone == manuelTranscationDone) &&
            (identical(other.debitedLoading, debitedLoading) ||
                other.debitedLoading == debitedLoading) &&
            (identical(other.downloading, downloading) ||
                other.downloading == downloading) &&
            (identical(other.downloaded, downloaded) ||
                other.downloaded == downloaded) &&
            (identical(other.agreePolicys, agreePolicys) ||
                other.agreePolicys == agreePolicys) &&
            (identical(other.gstError, gstError) ||
                other.gstError == gstError) &&
            (identical(other.paymentLoading, paymentLoading) ||
                other.paymentLoading == paymentLoading) &&
            (identical(other.paymetnDone, paymetnDone) ||
                other.paymetnDone == paymetnDone) &&
            const DeepCollectionEquality()
                .equals(other._creditedTranscations, _creditedTranscations) &&
            const DeepCollectionEquality()
                .equals(other._debitedTranscations, _debitedTranscations) &&
            const DeepCollectionEquality()
                .equals(other._manuelTranscations, _manuelTranscations) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            (identical(other.reciept, reciept) || other.reciept == reciept) &&
            (identical(other.amountPayable, amountPayable) ||
                other.amountPayable == amountPayable) &&
            (identical(other.isCreditedTab, isCreditedTab) ||
                other.isCreditedTab == isCreditedTab));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        hasError,
        isLoading,
        creditedLoading,
        manuelTranscationsLoading,
        manuelTranscationDone,
        debitedLoading,
        downloading,
        downloaded,
        agreePolicys,
        gstError,
        paymentLoading,
        paymetnDone,
        const DeepCollectionEquality().hash(_creditedTranscations),
        const DeepCollectionEquality().hash(_debitedTranscations),
        const DeepCollectionEquality().hash(_manuelTranscations),
        message,
        invoice,
        reciept,
        amountPayable,
        isCreditedTab
      ]);

  @override
  String toString() {
    return 'TranscationState(hasError: $hasError, isLoading: $isLoading, creditedLoading: $creditedLoading, manuelTranscationsLoading: $manuelTranscationsLoading, manuelTranscationDone: $manuelTranscationDone, debitedLoading: $debitedLoading, downloading: $downloading, downloaded: $downloaded, agreePolicys: $agreePolicys, gstError: $gstError, paymentLoading: $paymentLoading, paymetnDone: $paymetnDone, creditedTranscations: $creditedTranscations, debitedTranscations: $debitedTranscations, manuelTranscations: $manuelTranscations, message: $message, invoice: $invoice, reciept: $reciept, amountPayable: $amountPayable, isCreditedTab: $isCreditedTab)';
  }
}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res>
    implements $TranscationStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) =
      __$InitialCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool hasError,
      bool isLoading,
      bool creditedLoading,
      bool manuelTranscationsLoading,
      bool manuelTranscationDone,
      bool debitedLoading,
      bool downloading,
      bool downloaded,
      bool agreePolicys,
      bool gstError,
      bool paymentLoading,
      bool paymetnDone,
      List<Transcation>? creditedTranscations,
      List<Transcation>? debitedTranscations,
      List<TranscationCashModel>? manuelTranscations,
      String? message,
      String? invoice,
      ImageModel? reciept,
      double? amountPayable,
      bool isCreditedTab});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

  /// Create a copy of TranscationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? hasError = null,
    Object? isLoading = null,
    Object? creditedLoading = null,
    Object? manuelTranscationsLoading = null,
    Object? manuelTranscationDone = null,
    Object? debitedLoading = null,
    Object? downloading = null,
    Object? downloaded = null,
    Object? agreePolicys = null,
    Object? gstError = null,
    Object? paymentLoading = null,
    Object? paymetnDone = null,
    Object? creditedTranscations = freezed,
    Object? debitedTranscations = freezed,
    Object? manuelTranscations = freezed,
    Object? message = freezed,
    Object? invoice = freezed,
    Object? reciept = freezed,
    Object? amountPayable = freezed,
    Object? isCreditedTab = null,
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
      creditedLoading: null == creditedLoading
          ? _self.creditedLoading
          : creditedLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      manuelTranscationsLoading: null == manuelTranscationsLoading
          ? _self.manuelTranscationsLoading
          : manuelTranscationsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      manuelTranscationDone: null == manuelTranscationDone
          ? _self.manuelTranscationDone
          : manuelTranscationDone // ignore: cast_nullable_to_non_nullable
              as bool,
      debitedLoading: null == debitedLoading
          ? _self.debitedLoading
          : debitedLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloading: null == downloading
          ? _self.downloading
          : downloading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloaded: null == downloaded
          ? _self.downloaded
          : downloaded // ignore: cast_nullable_to_non_nullable
              as bool,
      agreePolicys: null == agreePolicys
          ? _self.agreePolicys
          : agreePolicys // ignore: cast_nullable_to_non_nullable
              as bool,
      gstError: null == gstError
          ? _self.gstError
          : gstError // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentLoading: null == paymentLoading
          ? _self.paymentLoading
          : paymentLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      paymetnDone: null == paymetnDone
          ? _self.paymetnDone
          : paymetnDone // ignore: cast_nullable_to_non_nullable
              as bool,
      creditedTranscations: freezed == creditedTranscations
          ? _self._creditedTranscations
          : creditedTranscations // ignore: cast_nullable_to_non_nullable
              as List<Transcation>?,
      debitedTranscations: freezed == debitedTranscations
          ? _self._debitedTranscations
          : debitedTranscations // ignore: cast_nullable_to_non_nullable
              as List<Transcation>?,
      manuelTranscations: freezed == manuelTranscations
          ? _self._manuelTranscations
          : manuelTranscations // ignore: cast_nullable_to_non_nullable
              as List<TranscationCashModel>?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      invoice: freezed == invoice
          ? _self.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as String?,
      reciept: freezed == reciept
          ? _self.reciept
          : reciept // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      amountPayable: freezed == amountPayable
          ? _self.amountPayable
          : amountPayable // ignore: cast_nullable_to_non_nullable
              as double?,
      isCreditedTab: null == isCreditedTab
          ? _self.isCreditedTab
          : isCreditedTab // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
