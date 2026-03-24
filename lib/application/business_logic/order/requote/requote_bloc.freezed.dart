// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'requote_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RequoteEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RequoteEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RequoteEvent()';
  }
}

/// @nodoc
class $RequoteEventCopyWith<$Res> {
  $RequoteEventCopyWith(RequoteEvent _, $Res Function(RequoteEvent) __);
}

/// Adds pattern-matching-related methods to [RequoteEvent].
extension RequoteEventPatterns on RequoteEvent {
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
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(GetDateAndTime value)? getDateAndTime,
    TResult Function(ResheduleOrder value)? resheduleOrder,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(GoBackIndex value)? goBackIndex,
    TResult Function(MarkYesOrNo value)? markYesOrNo,
    TResult Function(MarkAnswer value)? markAnswer,
    TResult Function(GetPrice value)? getPrice,
    TResult Function(RequotePrice value)? requotePrice,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetQuestions() when getQuestions != null:
        return getQuestions(_that);
      case GetDateAndTime() when getDateAndTime != null:
        return getDateAndTime(_that);
      case ResheduleOrder() when resheduleOrder != null:
        return resheduleOrder(_that);
      case ChangeIndex() when changeIndex != null:
        return changeIndex(_that);
      case GoBackIndex() when goBackIndex != null:
        return goBackIndex(_that);
      case MarkYesOrNo() when markYesOrNo != null:
        return markYesOrNo(_that);
      case MarkAnswer() when markAnswer != null:
        return markAnswer(_that);
      case GetPrice() when getPrice != null:
        return getPrice(_that);
      case RequotePrice() when requotePrice != null:
        return requotePrice(_that);
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
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(GetDateAndTime value) getDateAndTime,
    required TResult Function(ResheduleOrder value) resheduleOrder,
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(GoBackIndex value) goBackIndex,
    required TResult Function(MarkYesOrNo value) markYesOrNo,
    required TResult Function(MarkAnswer value) markAnswer,
    required TResult Function(GetPrice value) getPrice,
    required TResult Function(RequotePrice value) requotePrice,
    required TResult Function(Reset value) reset,
  }) {
    final _that = this;
    switch (_that) {
      case GetQuestions():
        return getQuestions(_that);
      case GetDateAndTime():
        return getDateAndTime(_that);
      case ResheduleOrder():
        return resheduleOrder(_that);
      case ChangeIndex():
        return changeIndex(_that);
      case GoBackIndex():
        return goBackIndex(_that);
      case MarkYesOrNo():
        return markYesOrNo(_that);
      case MarkAnswer():
        return markAnswer(_that);
      case GetPrice():
        return getPrice(_that);
      case RequotePrice():
        return requotePrice(_that);
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
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(GetDateAndTime value)? getDateAndTime,
    TResult? Function(ResheduleOrder value)? resheduleOrder,
    TResult? Function(ChangeIndex value)? changeIndex,
    TResult? Function(GoBackIndex value)? goBackIndex,
    TResult? Function(MarkYesOrNo value)? markYesOrNo,
    TResult? Function(MarkAnswer value)? markAnswer,
    TResult? Function(GetPrice value)? getPrice,
    TResult? Function(RequotePrice value)? requotePrice,
    TResult? Function(Reset value)? reset,
  }) {
    final _that = this;
    switch (_that) {
      case GetQuestions() when getQuestions != null:
        return getQuestions(_that);
      case GetDateAndTime() when getDateAndTime != null:
        return getDateAndTime(_that);
      case ResheduleOrder() when resheduleOrder != null:
        return resheduleOrder(_that);
      case ChangeIndex() when changeIndex != null:
        return changeIndex(_that);
      case GoBackIndex() when goBackIndex != null:
        return goBackIndex(_that);
      case MarkYesOrNo() when markYesOrNo != null:
        return markYesOrNo(_that);
      case MarkAnswer() when markAnswer != null:
        return markAnswer(_that);
      case GetPrice() when getPrice != null:
        return getPrice(_that);
      case RequotePrice() when requotePrice != null:
        return requotePrice(_that);
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
    TResult Function(String category, String slug)? getQuestions,
    TResult Function()? getDateAndTime,
    TResult Function(ResheduleModel resheduleModel, String orderId)?
        resheduleOrder,
    TResult Function(int index)? changeIndex,
    TResult Function(int index)? goBackIndex,
    TResult Function(SelectedOption selectedOption)? markYesOrNo,
    TResult Function(SelectedOption selectedOption)? markAnswer,
    TResult Function()? getPrice,
    TResult Function(String orderId, RequotePriceModel requotePriceModel)?
        requotePrice,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetQuestions() when getQuestions != null:
        return getQuestions(_that.category, _that.slug);
      case GetDateAndTime() when getDateAndTime != null:
        return getDateAndTime();
      case ResheduleOrder() when resheduleOrder != null:
        return resheduleOrder(_that.resheduleModel, _that.orderId);
      case ChangeIndex() when changeIndex != null:
        return changeIndex(_that.index);
      case GoBackIndex() when goBackIndex != null:
        return goBackIndex(_that.index);
      case MarkYesOrNo() when markYesOrNo != null:
        return markYesOrNo(_that.selectedOption);
      case MarkAnswer() when markAnswer != null:
        return markAnswer(_that.selectedOption);
      case GetPrice() when getPrice != null:
        return getPrice();
      case RequotePrice() when requotePrice != null:
        return requotePrice(_that.orderId, _that.requotePriceModel);
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
    required TResult Function(String category, String slug) getQuestions,
    required TResult Function() getDateAndTime,
    required TResult Function(ResheduleModel resheduleModel, String orderId)
        resheduleOrder,
    required TResult Function(int index) changeIndex,
    required TResult Function(int index) goBackIndex,
    required TResult Function(SelectedOption selectedOption) markYesOrNo,
    required TResult Function(SelectedOption selectedOption) markAnswer,
    required TResult Function() getPrice,
    required TResult Function(
            String orderId, RequotePriceModel requotePriceModel)
        requotePrice,
    required TResult Function() reset,
  }) {
    final _that = this;
    switch (_that) {
      case GetQuestions():
        return getQuestions(_that.category, _that.slug);
      case GetDateAndTime():
        return getDateAndTime();
      case ResheduleOrder():
        return resheduleOrder(_that.resheduleModel, _that.orderId);
      case ChangeIndex():
        return changeIndex(_that.index);
      case GoBackIndex():
        return goBackIndex(_that.index);
      case MarkYesOrNo():
        return markYesOrNo(_that.selectedOption);
      case MarkAnswer():
        return markAnswer(_that.selectedOption);
      case GetPrice():
        return getPrice();
      case RequotePrice():
        return requotePrice(_that.orderId, _that.requotePriceModel);
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
    TResult? Function(String category, String slug)? getQuestions,
    TResult? Function()? getDateAndTime,
    TResult? Function(ResheduleModel resheduleModel, String orderId)?
        resheduleOrder,
    TResult? Function(int index)? changeIndex,
    TResult? Function(int index)? goBackIndex,
    TResult? Function(SelectedOption selectedOption)? markYesOrNo,
    TResult? Function(SelectedOption selectedOption)? markAnswer,
    TResult? Function()? getPrice,
    TResult? Function(String orderId, RequotePriceModel requotePriceModel)?
        requotePrice,
    TResult? Function()? reset,
  }) {
    final _that = this;
    switch (_that) {
      case GetQuestions() when getQuestions != null:
        return getQuestions(_that.category, _that.slug);
      case GetDateAndTime() when getDateAndTime != null:
        return getDateAndTime();
      case ResheduleOrder() when resheduleOrder != null:
        return resheduleOrder(_that.resheduleModel, _that.orderId);
      case ChangeIndex() when changeIndex != null:
        return changeIndex(_that.index);
      case GoBackIndex() when goBackIndex != null:
        return goBackIndex(_that.index);
      case MarkYesOrNo() when markYesOrNo != null:
        return markYesOrNo(_that.selectedOption);
      case MarkAnswer() when markAnswer != null:
        return markAnswer(_that.selectedOption);
      case GetPrice() when getPrice != null:
        return getPrice();
      case RequotePrice() when requotePrice != null:
        return requotePrice(_that.orderId, _that.requotePriceModel);
      case Reset() when reset != null:
        return reset();
      case _:
        return null;
    }
  }
}

/// @nodoc

class GetQuestions implements RequoteEvent {
  const GetQuestions({required this.category, required this.slug});

  final String category;
  final String slug;

  /// Create a copy of RequoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetQuestionsCopyWith<GetQuestions> get copyWith =>
      _$GetQuestionsCopyWithImpl<GetQuestions>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetQuestions &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, slug);

  @override
  String toString() {
    return 'RequoteEvent.getQuestions(category: $category, slug: $slug)';
  }
}

/// @nodoc
abstract mixin class $GetQuestionsCopyWith<$Res>
    implements $RequoteEventCopyWith<$Res> {
  factory $GetQuestionsCopyWith(
          GetQuestions value, $Res Function(GetQuestions) _then) =
      _$GetQuestionsCopyWithImpl;
  @useResult
  $Res call({String category, String slug});
}

/// @nodoc
class _$GetQuestionsCopyWithImpl<$Res> implements $GetQuestionsCopyWith<$Res> {
  _$GetQuestionsCopyWithImpl(this._self, this._then);

  final GetQuestions _self;
  final $Res Function(GetQuestions) _then;

  /// Create a copy of RequoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? category = null,
    Object? slug = null,
  }) {
    return _then(GetQuestions(
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _self.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class GetDateAndTime implements RequoteEvent {
  const GetDateAndTime();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetDateAndTime);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RequoteEvent.getDateAndTime()';
  }
}

/// @nodoc

class ResheduleOrder implements RequoteEvent {
  const ResheduleOrder({required this.resheduleModel, required this.orderId});

  final ResheduleModel resheduleModel;
  final String orderId;

  /// Create a copy of RequoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResheduleOrderCopyWith<ResheduleOrder> get copyWith =>
      _$ResheduleOrderCopyWithImpl<ResheduleOrder>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResheduleOrder &&
            (identical(other.resheduleModel, resheduleModel) ||
                other.resheduleModel == resheduleModel) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resheduleModel, orderId);

  @override
  String toString() {
    return 'RequoteEvent.resheduleOrder(resheduleModel: $resheduleModel, orderId: $orderId)';
  }
}

/// @nodoc
abstract mixin class $ResheduleOrderCopyWith<$Res>
    implements $RequoteEventCopyWith<$Res> {
  factory $ResheduleOrderCopyWith(
          ResheduleOrder value, $Res Function(ResheduleOrder) _then) =
      _$ResheduleOrderCopyWithImpl;
  @useResult
  $Res call({ResheduleModel resheduleModel, String orderId});
}

/// @nodoc
class _$ResheduleOrderCopyWithImpl<$Res>
    implements $ResheduleOrderCopyWith<$Res> {
  _$ResheduleOrderCopyWithImpl(this._self, this._then);

  final ResheduleOrder _self;
  final $Res Function(ResheduleOrder) _then;

  /// Create a copy of RequoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? resheduleModel = null,
    Object? orderId = null,
  }) {
    return _then(ResheduleOrder(
      resheduleModel: null == resheduleModel
          ? _self.resheduleModel
          : resheduleModel // ignore: cast_nullable_to_non_nullable
              as ResheduleModel,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ChangeIndex implements RequoteEvent {
  const ChangeIndex({required this.index});

  final int index;

  /// Create a copy of RequoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChangeIndexCopyWith<ChangeIndex> get copyWith =>
      _$ChangeIndexCopyWithImpl<ChangeIndex>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeIndex &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @override
  String toString() {
    return 'RequoteEvent.changeIndex(index: $index)';
  }
}

/// @nodoc
abstract mixin class $ChangeIndexCopyWith<$Res>
    implements $RequoteEventCopyWith<$Res> {
  factory $ChangeIndexCopyWith(
          ChangeIndex value, $Res Function(ChangeIndex) _then) =
      _$ChangeIndexCopyWithImpl;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$ChangeIndexCopyWithImpl<$Res> implements $ChangeIndexCopyWith<$Res> {
  _$ChangeIndexCopyWithImpl(this._self, this._then);

  final ChangeIndex _self;
  final $Res Function(ChangeIndex) _then;

  /// Create a copy of RequoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? index = null,
  }) {
    return _then(ChangeIndex(
      index: null == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class GoBackIndex implements RequoteEvent {
  const GoBackIndex({required this.index});

  final int index;

  /// Create a copy of RequoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GoBackIndexCopyWith<GoBackIndex> get copyWith =>
      _$GoBackIndexCopyWithImpl<GoBackIndex>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GoBackIndex &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @override
  String toString() {
    return 'RequoteEvent.goBackIndex(index: $index)';
  }
}

/// @nodoc
abstract mixin class $GoBackIndexCopyWith<$Res>
    implements $RequoteEventCopyWith<$Res> {
  factory $GoBackIndexCopyWith(
          GoBackIndex value, $Res Function(GoBackIndex) _then) =
      _$GoBackIndexCopyWithImpl;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$GoBackIndexCopyWithImpl<$Res> implements $GoBackIndexCopyWith<$Res> {
  _$GoBackIndexCopyWithImpl(this._self, this._then);

  final GoBackIndex _self;
  final $Res Function(GoBackIndex) _then;

  /// Create a copy of RequoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? index = null,
  }) {
    return _then(GoBackIndex(
      index: null == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class MarkYesOrNo implements RequoteEvent {
  const MarkYesOrNo({required this.selectedOption});

  final SelectedOption selectedOption;

  /// Create a copy of RequoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MarkYesOrNoCopyWith<MarkYesOrNo> get copyWith =>
      _$MarkYesOrNoCopyWithImpl<MarkYesOrNo>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MarkYesOrNo &&
            (identical(other.selectedOption, selectedOption) ||
                other.selectedOption == selectedOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedOption);

  @override
  String toString() {
    return 'RequoteEvent.markYesOrNo(selectedOption: $selectedOption)';
  }
}

/// @nodoc
abstract mixin class $MarkYesOrNoCopyWith<$Res>
    implements $RequoteEventCopyWith<$Res> {
  factory $MarkYesOrNoCopyWith(
          MarkYesOrNo value, $Res Function(MarkYesOrNo) _then) =
      _$MarkYesOrNoCopyWithImpl;
  @useResult
  $Res call({SelectedOption selectedOption});
}

/// @nodoc
class _$MarkYesOrNoCopyWithImpl<$Res> implements $MarkYesOrNoCopyWith<$Res> {
  _$MarkYesOrNoCopyWithImpl(this._self, this._then);

  final MarkYesOrNo _self;
  final $Res Function(MarkYesOrNo) _then;

  /// Create a copy of RequoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedOption = null,
  }) {
    return _then(MarkYesOrNo(
      selectedOption: null == selectedOption
          ? _self.selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as SelectedOption,
    ));
  }
}

/// @nodoc

class MarkAnswer implements RequoteEvent {
  const MarkAnswer({required this.selectedOption});

  final SelectedOption selectedOption;

  /// Create a copy of RequoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MarkAnswerCopyWith<MarkAnswer> get copyWith =>
      _$MarkAnswerCopyWithImpl<MarkAnswer>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MarkAnswer &&
            (identical(other.selectedOption, selectedOption) ||
                other.selectedOption == selectedOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedOption);

  @override
  String toString() {
    return 'RequoteEvent.markAnswer(selectedOption: $selectedOption)';
  }
}

/// @nodoc
abstract mixin class $MarkAnswerCopyWith<$Res>
    implements $RequoteEventCopyWith<$Res> {
  factory $MarkAnswerCopyWith(
          MarkAnswer value, $Res Function(MarkAnswer) _then) =
      _$MarkAnswerCopyWithImpl;
  @useResult
  $Res call({SelectedOption selectedOption});
}

/// @nodoc
class _$MarkAnswerCopyWithImpl<$Res> implements $MarkAnswerCopyWith<$Res> {
  _$MarkAnswerCopyWithImpl(this._self, this._then);

  final MarkAnswer _self;
  final $Res Function(MarkAnswer) _then;

  /// Create a copy of RequoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedOption = null,
  }) {
    return _then(MarkAnswer(
      selectedOption: null == selectedOption
          ? _self.selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as SelectedOption,
    ));
  }
}

/// @nodoc

class GetPrice implements RequoteEvent {
  const GetPrice();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetPrice);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RequoteEvent.getPrice()';
  }
}

/// @nodoc

class RequotePrice implements RequoteEvent {
  const RequotePrice({required this.orderId, required this.requotePriceModel});

  final String orderId;
  final RequotePriceModel requotePriceModel;

  /// Create a copy of RequoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RequotePriceCopyWith<RequotePrice> get copyWith =>
      _$RequotePriceCopyWithImpl<RequotePrice>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequotePrice &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.requotePriceModel, requotePriceModel) ||
                other.requotePriceModel == requotePriceModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, requotePriceModel);

  @override
  String toString() {
    return 'RequoteEvent.requotePrice(orderId: $orderId, requotePriceModel: $requotePriceModel)';
  }
}

/// @nodoc
abstract mixin class $RequotePriceCopyWith<$Res>
    implements $RequoteEventCopyWith<$Res> {
  factory $RequotePriceCopyWith(
          RequotePrice value, $Res Function(RequotePrice) _then) =
      _$RequotePriceCopyWithImpl;
  @useResult
  $Res call({String orderId, RequotePriceModel requotePriceModel});
}

/// @nodoc
class _$RequotePriceCopyWithImpl<$Res> implements $RequotePriceCopyWith<$Res> {
  _$RequotePriceCopyWithImpl(this._self, this._then);

  final RequotePrice _self;
  final $Res Function(RequotePrice) _then;

  /// Create a copy of RequoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
    Object? requotePriceModel = null,
  }) {
    return _then(RequotePrice(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      requotePriceModel: null == requotePriceModel
          ? _self.requotePriceModel
          : requotePriceModel // ignore: cast_nullable_to_non_nullable
              as RequotePriceModel,
    ));
  }
}

/// @nodoc

class Reset implements RequoteEvent {
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
    return 'RequoteEvent.reset()';
  }
}

/// @nodoc
mixin _$RequoteState {
  bool get isLoading;
  bool get hasError;
  String? get message;
  String? get basePrice;
  String? get category;
  String? get slug;
  List<String> get dates;
  List<String> get time;
  bool get questionLoading;
  bool get resheduleLoading;
  bool get priceCalculationLoading;
  bool get priceCalculationError;
  bool get requoteLoading;
  bool get requoteError;
  bool get requoteDone;
  bool get resheduleDone;
  int get requoteIndex;
  List<Section>? get sections;
  Map<String, List<SelectedOption>> get selectedAnswers;

  /// Create a copy of RequoteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RequoteStateCopyWith<RequoteState> get copyWith =>
      _$RequoteStateCopyWithImpl<RequoteState>(
          this as RequoteState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequoteState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality().equals(other.dates, dates) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            (identical(other.questionLoading, questionLoading) ||
                other.questionLoading == questionLoading) &&
            (identical(other.resheduleLoading, resheduleLoading) ||
                other.resheduleLoading == resheduleLoading) &&
            (identical(
                    other.priceCalculationLoading, priceCalculationLoading) ||
                other.priceCalculationLoading == priceCalculationLoading) &&
            (identical(other.priceCalculationError, priceCalculationError) ||
                other.priceCalculationError == priceCalculationError) &&
            (identical(other.requoteLoading, requoteLoading) ||
                other.requoteLoading == requoteLoading) &&
            (identical(other.requoteError, requoteError) ||
                other.requoteError == requoteError) &&
            (identical(other.requoteDone, requoteDone) ||
                other.requoteDone == requoteDone) &&
            (identical(other.resheduleDone, resheduleDone) ||
                other.resheduleDone == resheduleDone) &&
            (identical(other.requoteIndex, requoteIndex) ||
                other.requoteIndex == requoteIndex) &&
            const DeepCollectionEquality().equals(other.sections, sections) &&
            const DeepCollectionEquality()
                .equals(other.selectedAnswers, selectedAnswers));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isLoading,
        hasError,
        message,
        basePrice,
        category,
        slug,
        const DeepCollectionEquality().hash(dates),
        const DeepCollectionEquality().hash(time),
        questionLoading,
        resheduleLoading,
        priceCalculationLoading,
        priceCalculationError,
        requoteLoading,
        requoteError,
        requoteDone,
        resheduleDone,
        requoteIndex,
        const DeepCollectionEquality().hash(sections),
        const DeepCollectionEquality().hash(selectedAnswers)
      ]);

  @override
  String toString() {
    return 'RequoteState(isLoading: $isLoading, hasError: $hasError, message: $message, basePrice: $basePrice, category: $category, slug: $slug, dates: $dates, time: $time, questionLoading: $questionLoading, resheduleLoading: $resheduleLoading, priceCalculationLoading: $priceCalculationLoading, priceCalculationError: $priceCalculationError, requoteLoading: $requoteLoading, requoteError: $requoteError, requoteDone: $requoteDone, resheduleDone: $resheduleDone, requoteIndex: $requoteIndex, sections: $sections, selectedAnswers: $selectedAnswers)';
  }
}

/// @nodoc
abstract mixin class $RequoteStateCopyWith<$Res> {
  factory $RequoteStateCopyWith(
          RequoteState value, $Res Function(RequoteState) _then) =
      _$RequoteStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      String? basePrice,
      String? category,
      String? slug,
      List<String> dates,
      List<String> time,
      bool questionLoading,
      bool resheduleLoading,
      bool priceCalculationLoading,
      bool priceCalculationError,
      bool requoteLoading,
      bool requoteError,
      bool requoteDone,
      bool resheduleDone,
      int requoteIndex,
      List<Section>? sections,
      Map<String, List<SelectedOption>> selectedAnswers});
}

/// @nodoc
class _$RequoteStateCopyWithImpl<$Res> implements $RequoteStateCopyWith<$Res> {
  _$RequoteStateCopyWithImpl(this._self, this._then);

  final RequoteState _self;
  final $Res Function(RequoteState) _then;

  /// Create a copy of RequoteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? message = freezed,
    Object? basePrice = freezed,
    Object? category = freezed,
    Object? slug = freezed,
    Object? dates = null,
    Object? time = null,
    Object? questionLoading = null,
    Object? resheduleLoading = null,
    Object? priceCalculationLoading = null,
    Object? priceCalculationError = null,
    Object? requoteLoading = null,
    Object? requoteError = null,
    Object? requoteDone = null,
    Object? resheduleDone = null,
    Object? requoteIndex = null,
    Object? sections = freezed,
    Object? selectedAnswers = null,
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
      basePrice: freezed == basePrice
          ? _self.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _self.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      dates: null == dates
          ? _self.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<String>,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      questionLoading: null == questionLoading
          ? _self.questionLoading
          : questionLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      resheduleLoading: null == resheduleLoading
          ? _self.resheduleLoading
          : resheduleLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      priceCalculationLoading: null == priceCalculationLoading
          ? _self.priceCalculationLoading
          : priceCalculationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      priceCalculationError: null == priceCalculationError
          ? _self.priceCalculationError
          : priceCalculationError // ignore: cast_nullable_to_non_nullable
              as bool,
      requoteLoading: null == requoteLoading
          ? _self.requoteLoading
          : requoteLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      requoteError: null == requoteError
          ? _self.requoteError
          : requoteError // ignore: cast_nullable_to_non_nullable
              as bool,
      requoteDone: null == requoteDone
          ? _self.requoteDone
          : requoteDone // ignore: cast_nullable_to_non_nullable
              as bool,
      resheduleDone: null == resheduleDone
          ? _self.resheduleDone
          : resheduleDone // ignore: cast_nullable_to_non_nullable
              as bool,
      requoteIndex: null == requoteIndex
          ? _self.requoteIndex
          : requoteIndex // ignore: cast_nullable_to_non_nullable
              as int,
      sections: freezed == sections
          ? _self.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>?,
      selectedAnswers: null == selectedAnswers
          ? _self.selectedAnswers
          : selectedAnswers // ignore: cast_nullable_to_non_nullable
              as Map<String, List<SelectedOption>>,
    ));
  }
}

/// Adds pattern-matching-related methods to [RequoteState].
extension RequoteStatePatterns on RequoteState {
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
            String? message,
            String? basePrice,
            String? category,
            String? slug,
            List<String> dates,
            List<String> time,
            bool questionLoading,
            bool resheduleLoading,
            bool priceCalculationLoading,
            bool priceCalculationError,
            bool requoteLoading,
            bool requoteError,
            bool requoteDone,
            bool resheduleDone,
            int requoteIndex,
            List<Section>? sections,
            Map<String, List<SelectedOption>> selectedAnswers)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when $default != null:
        return $default(
            _that.isLoading,
            _that.hasError,
            _that.message,
            _that.basePrice,
            _that.category,
            _that.slug,
            _that.dates,
            _that.time,
            _that.questionLoading,
            _that.resheduleLoading,
            _that.priceCalculationLoading,
            _that.priceCalculationError,
            _that.requoteLoading,
            _that.requoteError,
            _that.requoteDone,
            _that.resheduleDone,
            _that.requoteIndex,
            _that.sections,
            _that.selectedAnswers);
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
            String? message,
            String? basePrice,
            String? category,
            String? slug,
            List<String> dates,
            List<String> time,
            bool questionLoading,
            bool resheduleLoading,
            bool priceCalculationLoading,
            bool priceCalculationError,
            bool requoteLoading,
            bool requoteError,
            bool requoteDone,
            bool resheduleDone,
            int requoteIndex,
            List<Section>? sections,
            Map<String, List<SelectedOption>> selectedAnswers)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return $default(
            _that.isLoading,
            _that.hasError,
            _that.message,
            _that.basePrice,
            _that.category,
            _that.slug,
            _that.dates,
            _that.time,
            _that.questionLoading,
            _that.resheduleLoading,
            _that.priceCalculationLoading,
            _that.priceCalculationError,
            _that.requoteLoading,
            _that.requoteError,
            _that.requoteDone,
            _that.resheduleDone,
            _that.requoteIndex,
            _that.sections,
            _that.selectedAnswers);
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
            String? message,
            String? basePrice,
            String? category,
            String? slug,
            List<String> dates,
            List<String> time,
            bool questionLoading,
            bool resheduleLoading,
            bool priceCalculationLoading,
            bool priceCalculationError,
            bool requoteLoading,
            bool requoteError,
            bool requoteDone,
            bool resheduleDone,
            int requoteIndex,
            List<Section>? sections,
            Map<String, List<SelectedOption>> selectedAnswers)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Initial() when $default != null:
        return $default(
            _that.isLoading,
            _that.hasError,
            _that.message,
            _that.basePrice,
            _that.category,
            _that.slug,
            _that.dates,
            _that.time,
            _that.questionLoading,
            _that.resheduleLoading,
            _that.priceCalculationLoading,
            _that.priceCalculationError,
            _that.requoteLoading,
            _that.requoteError,
            _that.requoteDone,
            _that.resheduleDone,
            _that.requoteIndex,
            _that.sections,
            _that.selectedAnswers);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements RequoteState {
  const _Initial(
      {required this.isLoading,
      required this.hasError,
      this.message,
      this.basePrice,
      this.category,
      this.slug,
      required final List<String> dates,
      required final List<String> time,
      required this.questionLoading,
      required this.resheduleLoading,
      required this.priceCalculationLoading,
      required this.priceCalculationError,
      required this.requoteLoading,
      required this.requoteError,
      required this.requoteDone,
      required this.resheduleDone,
      required this.requoteIndex,
      final List<Section>? sections,
      required final Map<String, List<SelectedOption>> selectedAnswers})
      : _dates = dates,
        _time = time,
        _sections = sections,
        _selectedAnswers = selectedAnswers;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? message;
  @override
  final String? basePrice;
  @override
  final String? category;
  @override
  final String? slug;
  final List<String> _dates;
  @override
  List<String> get dates {
    if (_dates is EqualUnmodifiableListView) return _dates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dates);
  }

  final List<String> _time;
  @override
  List<String> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  @override
  final bool questionLoading;
  @override
  final bool resheduleLoading;
  @override
  final bool priceCalculationLoading;
  @override
  final bool priceCalculationError;
  @override
  final bool requoteLoading;
  @override
  final bool requoteError;
  @override
  final bool requoteDone;
  @override
  final bool resheduleDone;
  @override
  final int requoteIndex;
  final List<Section>? _sections;
  @override
  List<Section>? get sections {
    final value = _sections;
    if (value == null) return null;
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, List<SelectedOption>> _selectedAnswers;
  @override
  Map<String, List<SelectedOption>> get selectedAnswers {
    if (_selectedAnswers is EqualUnmodifiableMapView) return _selectedAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedAnswers);
  }

  /// Create a copy of RequoteState
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
            (identical(other.message, message) || other.message == message) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality().equals(other._dates, _dates) &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            (identical(other.questionLoading, questionLoading) ||
                other.questionLoading == questionLoading) &&
            (identical(other.resheduleLoading, resheduleLoading) ||
                other.resheduleLoading == resheduleLoading) &&
            (identical(
                    other.priceCalculationLoading, priceCalculationLoading) ||
                other.priceCalculationLoading == priceCalculationLoading) &&
            (identical(other.priceCalculationError, priceCalculationError) ||
                other.priceCalculationError == priceCalculationError) &&
            (identical(other.requoteLoading, requoteLoading) ||
                other.requoteLoading == requoteLoading) &&
            (identical(other.requoteError, requoteError) ||
                other.requoteError == requoteError) &&
            (identical(other.requoteDone, requoteDone) ||
                other.requoteDone == requoteDone) &&
            (identical(other.resheduleDone, resheduleDone) ||
                other.resheduleDone == resheduleDone) &&
            (identical(other.requoteIndex, requoteIndex) ||
                other.requoteIndex == requoteIndex) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            const DeepCollectionEquality()
                .equals(other._selectedAnswers, _selectedAnswers));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isLoading,
        hasError,
        message,
        basePrice,
        category,
        slug,
        const DeepCollectionEquality().hash(_dates),
        const DeepCollectionEquality().hash(_time),
        questionLoading,
        resheduleLoading,
        priceCalculationLoading,
        priceCalculationError,
        requoteLoading,
        requoteError,
        requoteDone,
        resheduleDone,
        requoteIndex,
        const DeepCollectionEquality().hash(_sections),
        const DeepCollectionEquality().hash(_selectedAnswers)
      ]);

  @override
  String toString() {
    return 'RequoteState(isLoading: $isLoading, hasError: $hasError, message: $message, basePrice: $basePrice, category: $category, slug: $slug, dates: $dates, time: $time, questionLoading: $questionLoading, resheduleLoading: $resheduleLoading, priceCalculationLoading: $priceCalculationLoading, priceCalculationError: $priceCalculationError, requoteLoading: $requoteLoading, requoteError: $requoteError, requoteDone: $requoteDone, resheduleDone: $resheduleDone, requoteIndex: $requoteIndex, sections: $sections, selectedAnswers: $selectedAnswers)';
  }
}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res>
    implements $RequoteStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) =
      __$InitialCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      String? basePrice,
      String? category,
      String? slug,
      List<String> dates,
      List<String> time,
      bool questionLoading,
      bool resheduleLoading,
      bool priceCalculationLoading,
      bool priceCalculationError,
      bool requoteLoading,
      bool requoteError,
      bool requoteDone,
      bool resheduleDone,
      int requoteIndex,
      List<Section>? sections,
      Map<String, List<SelectedOption>> selectedAnswers});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

  /// Create a copy of RequoteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? message = freezed,
    Object? basePrice = freezed,
    Object? category = freezed,
    Object? slug = freezed,
    Object? dates = null,
    Object? time = null,
    Object? questionLoading = null,
    Object? resheduleLoading = null,
    Object? priceCalculationLoading = null,
    Object? priceCalculationError = null,
    Object? requoteLoading = null,
    Object? requoteError = null,
    Object? requoteDone = null,
    Object? resheduleDone = null,
    Object? requoteIndex = null,
    Object? sections = freezed,
    Object? selectedAnswers = null,
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
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      basePrice: freezed == basePrice
          ? _self.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _self.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      dates: null == dates
          ? _self._dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<String>,
      time: null == time
          ? _self._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      questionLoading: null == questionLoading
          ? _self.questionLoading
          : questionLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      resheduleLoading: null == resheduleLoading
          ? _self.resheduleLoading
          : resheduleLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      priceCalculationLoading: null == priceCalculationLoading
          ? _self.priceCalculationLoading
          : priceCalculationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      priceCalculationError: null == priceCalculationError
          ? _self.priceCalculationError
          : priceCalculationError // ignore: cast_nullable_to_non_nullable
              as bool,
      requoteLoading: null == requoteLoading
          ? _self.requoteLoading
          : requoteLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      requoteError: null == requoteError
          ? _self.requoteError
          : requoteError // ignore: cast_nullable_to_non_nullable
              as bool,
      requoteDone: null == requoteDone
          ? _self.requoteDone
          : requoteDone // ignore: cast_nullable_to_non_nullable
              as bool,
      resheduleDone: null == resheduleDone
          ? _self.resheduleDone
          : resheduleDone // ignore: cast_nullable_to_non_nullable
              as bool,
      requoteIndex: null == requoteIndex
          ? _self.requoteIndex
          : requoteIndex // ignore: cast_nullable_to_non_nullable
              as int,
      sections: freezed == sections
          ? _self._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>?,
      selectedAnswers: null == selectedAnswers
          ? _self._selectedAnswers
          : selectedAnswers // ignore: cast_nullable_to_non_nullable
              as Map<String, List<SelectedOption>>,
    ));
  }
}

// dart format on
