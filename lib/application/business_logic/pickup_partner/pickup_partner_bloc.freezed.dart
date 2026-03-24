// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pickup_partner_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PickupPartnerEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PickupPartnerEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PickupPartnerEvent()';
  }
}

/// @nodoc
class $PickupPartnerEventCopyWith<$Res> {
  $PickupPartnerEventCopyWith(
      PickupPartnerEvent _, $Res Function(PickupPartnerEvent) __);
}

/// Adds pattern-matching-related methods to [PickupPartnerEvent].
extension PickupPartnerEventPatterns on PickupPartnerEvent {
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
    TResult Function(AddPickupPartner value)? addPickupPartner,
    TResult Function(GetPickupPartners value)? getPickupPartners,
    TResult Function(BlocPickupPartners value)? blocPickupPartners,
    TResult Function(UnBlocPickupPartners value)? unBlocPickupPartners,
    TResult Function(GetPartnerProfile value)? getPartnerProfile,
    TResult Function(AssignOrderToPickupPartner value)?
        assignOrderToPickupPartner,
    TResult Function(DeAssignOrderFromPickupPartner value)?
        deAssignOrderFromPickupPartner,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AddPickupPartner() when addPickupPartner != null:
        return addPickupPartner(_that);
      case GetPickupPartners() when getPickupPartners != null:
        return getPickupPartners(_that);
      case BlocPickupPartners() when blocPickupPartners != null:
        return blocPickupPartners(_that);
      case UnBlocPickupPartners() when unBlocPickupPartners != null:
        return unBlocPickupPartners(_that);
      case GetPartnerProfile() when getPartnerProfile != null:
        return getPartnerProfile(_that);
      case AssignOrderToPickupPartner() when assignOrderToPickupPartner != null:
        return assignOrderToPickupPartner(_that);
      case DeAssignOrderFromPickupPartner()
          when deAssignOrderFromPickupPartner != null:
        return deAssignOrderFromPickupPartner(_that);
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
    required TResult Function(AddPickupPartner value) addPickupPartner,
    required TResult Function(GetPickupPartners value) getPickupPartners,
    required TResult Function(BlocPickupPartners value) blocPickupPartners,
    required TResult Function(UnBlocPickupPartners value) unBlocPickupPartners,
    required TResult Function(GetPartnerProfile value) getPartnerProfile,
    required TResult Function(AssignOrderToPickupPartner value)
        assignOrderToPickupPartner,
    required TResult Function(DeAssignOrderFromPickupPartner value)
        deAssignOrderFromPickupPartner,
    required TResult Function(Reset value) reset,
  }) {
    final _that = this;
    switch (_that) {
      case AddPickupPartner():
        return addPickupPartner(_that);
      case GetPickupPartners():
        return getPickupPartners(_that);
      case BlocPickupPartners():
        return blocPickupPartners(_that);
      case UnBlocPickupPartners():
        return unBlocPickupPartners(_that);
      case GetPartnerProfile():
        return getPartnerProfile(_that);
      case AssignOrderToPickupPartner():
        return assignOrderToPickupPartner(_that);
      case DeAssignOrderFromPickupPartner():
        return deAssignOrderFromPickupPartner(_that);
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
    TResult? Function(AddPickupPartner value)? addPickupPartner,
    TResult? Function(GetPickupPartners value)? getPickupPartners,
    TResult? Function(BlocPickupPartners value)? blocPickupPartners,
    TResult? Function(UnBlocPickupPartners value)? unBlocPickupPartners,
    TResult? Function(GetPartnerProfile value)? getPartnerProfile,
    TResult? Function(AssignOrderToPickupPartner value)?
        assignOrderToPickupPartner,
    TResult? Function(DeAssignOrderFromPickupPartner value)?
        deAssignOrderFromPickupPartner,
    TResult? Function(Reset value)? reset,
  }) {
    final _that = this;
    switch (_that) {
      case AddPickupPartner() when addPickupPartner != null:
        return addPickupPartner(_that);
      case GetPickupPartners() when getPickupPartners != null:
        return getPickupPartners(_that);
      case BlocPickupPartners() when blocPickupPartners != null:
        return blocPickupPartners(_that);
      case UnBlocPickupPartners() when unBlocPickupPartners != null:
        return unBlocPickupPartners(_that);
      case GetPartnerProfile() when getPartnerProfile != null:
        return getPartnerProfile(_that);
      case AssignOrderToPickupPartner() when assignOrderToPickupPartner != null:
        return assignOrderToPickupPartner(_that);
      case DeAssignOrderFromPickupPartner()
          when deAssignOrderFromPickupPartner != null:
        return deAssignOrderFromPickupPartner(_that);
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
    TResult Function(AddPickupPartnerModel addPickupPartnerModel)?
        addPickupPartner,
    TResult Function()? getPickupPartners,
    TResult Function(String id)? blocPickupPartners,
    TResult Function(String id)? unBlocPickupPartners,
    TResult Function()? getPartnerProfile,
    TResult Function(String partnerId, String orderId)?
        assignOrderToPickupPartner,
    TResult Function(String orderId)? deAssignOrderFromPickupPartner,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AddPickupPartner() when addPickupPartner != null:
        return addPickupPartner(_that.addPickupPartnerModel);
      case GetPickupPartners() when getPickupPartners != null:
        return getPickupPartners();
      case BlocPickupPartners() when blocPickupPartners != null:
        return blocPickupPartners(_that.id);
      case UnBlocPickupPartners() when unBlocPickupPartners != null:
        return unBlocPickupPartners(_that.id);
      case GetPartnerProfile() when getPartnerProfile != null:
        return getPartnerProfile();
      case AssignOrderToPickupPartner() when assignOrderToPickupPartner != null:
        return assignOrderToPickupPartner(_that.partnerId, _that.orderId);
      case DeAssignOrderFromPickupPartner()
          when deAssignOrderFromPickupPartner != null:
        return deAssignOrderFromPickupPartner(_that.orderId);
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
    required TResult Function(AddPickupPartnerModel addPickupPartnerModel)
        addPickupPartner,
    required TResult Function() getPickupPartners,
    required TResult Function(String id) blocPickupPartners,
    required TResult Function(String id) unBlocPickupPartners,
    required TResult Function() getPartnerProfile,
    required TResult Function(String partnerId, String orderId)
        assignOrderToPickupPartner,
    required TResult Function(String orderId) deAssignOrderFromPickupPartner,
    required TResult Function() reset,
  }) {
    final _that = this;
    switch (_that) {
      case AddPickupPartner():
        return addPickupPartner(_that.addPickupPartnerModel);
      case GetPickupPartners():
        return getPickupPartners();
      case BlocPickupPartners():
        return blocPickupPartners(_that.id);
      case UnBlocPickupPartners():
        return unBlocPickupPartners(_that.id);
      case GetPartnerProfile():
        return getPartnerProfile();
      case AssignOrderToPickupPartner():
        return assignOrderToPickupPartner(_that.partnerId, _that.orderId);
      case DeAssignOrderFromPickupPartner():
        return deAssignOrderFromPickupPartner(_that.orderId);
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
    TResult? Function(AddPickupPartnerModel addPickupPartnerModel)?
        addPickupPartner,
    TResult? Function()? getPickupPartners,
    TResult? Function(String id)? blocPickupPartners,
    TResult? Function(String id)? unBlocPickupPartners,
    TResult? Function()? getPartnerProfile,
    TResult? Function(String partnerId, String orderId)?
        assignOrderToPickupPartner,
    TResult? Function(String orderId)? deAssignOrderFromPickupPartner,
    TResult? Function()? reset,
  }) {
    final _that = this;
    switch (_that) {
      case AddPickupPartner() when addPickupPartner != null:
        return addPickupPartner(_that.addPickupPartnerModel);
      case GetPickupPartners() when getPickupPartners != null:
        return getPickupPartners();
      case BlocPickupPartners() when blocPickupPartners != null:
        return blocPickupPartners(_that.id);
      case UnBlocPickupPartners() when unBlocPickupPartners != null:
        return unBlocPickupPartners(_that.id);
      case GetPartnerProfile() when getPartnerProfile != null:
        return getPartnerProfile();
      case AssignOrderToPickupPartner() when assignOrderToPickupPartner != null:
        return assignOrderToPickupPartner(_that.partnerId, _that.orderId);
      case DeAssignOrderFromPickupPartner()
          when deAssignOrderFromPickupPartner != null:
        return deAssignOrderFromPickupPartner(_that.orderId);
      case Reset() when reset != null:
        return reset();
      case _:
        return null;
    }
  }
}

/// @nodoc

class AddPickupPartner implements PickupPartnerEvent {
  const AddPickupPartner({required this.addPickupPartnerModel});

  final AddPickupPartnerModel addPickupPartnerModel;

  /// Create a copy of PickupPartnerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddPickupPartnerCopyWith<AddPickupPartner> get copyWith =>
      _$AddPickupPartnerCopyWithImpl<AddPickupPartner>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddPickupPartner &&
            (identical(other.addPickupPartnerModel, addPickupPartnerModel) ||
                other.addPickupPartnerModel == addPickupPartnerModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addPickupPartnerModel);

  @override
  String toString() {
    return 'PickupPartnerEvent.addPickupPartner(addPickupPartnerModel: $addPickupPartnerModel)';
  }
}

/// @nodoc
abstract mixin class $AddPickupPartnerCopyWith<$Res>
    implements $PickupPartnerEventCopyWith<$Res> {
  factory $AddPickupPartnerCopyWith(
          AddPickupPartner value, $Res Function(AddPickupPartner) _then) =
      _$AddPickupPartnerCopyWithImpl;
  @useResult
  $Res call({AddPickupPartnerModel addPickupPartnerModel});
}

/// @nodoc
class _$AddPickupPartnerCopyWithImpl<$Res>
    implements $AddPickupPartnerCopyWith<$Res> {
  _$AddPickupPartnerCopyWithImpl(this._self, this._then);

  final AddPickupPartner _self;
  final $Res Function(AddPickupPartner) _then;

  /// Create a copy of PickupPartnerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? addPickupPartnerModel = null,
  }) {
    return _then(AddPickupPartner(
      addPickupPartnerModel: null == addPickupPartnerModel
          ? _self.addPickupPartnerModel
          : addPickupPartnerModel // ignore: cast_nullable_to_non_nullable
              as AddPickupPartnerModel,
    ));
  }
}

/// @nodoc

class GetPickupPartners implements PickupPartnerEvent {
  const GetPickupPartners();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetPickupPartners);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PickupPartnerEvent.getPickupPartners()';
  }
}

/// @nodoc

class BlocPickupPartners implements PickupPartnerEvent {
  const BlocPickupPartners({required this.id});

  final String id;

  /// Create a copy of PickupPartnerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BlocPickupPartnersCopyWith<BlocPickupPartners> get copyWith =>
      _$BlocPickupPartnersCopyWithImpl<BlocPickupPartners>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BlocPickupPartners &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'PickupPartnerEvent.blocPickupPartners(id: $id)';
  }
}

/// @nodoc
abstract mixin class $BlocPickupPartnersCopyWith<$Res>
    implements $PickupPartnerEventCopyWith<$Res> {
  factory $BlocPickupPartnersCopyWith(
          BlocPickupPartners value, $Res Function(BlocPickupPartners) _then) =
      _$BlocPickupPartnersCopyWithImpl;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$BlocPickupPartnersCopyWithImpl<$Res>
    implements $BlocPickupPartnersCopyWith<$Res> {
  _$BlocPickupPartnersCopyWithImpl(this._self, this._then);

  final BlocPickupPartners _self;
  final $Res Function(BlocPickupPartners) _then;

  /// Create a copy of PickupPartnerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(BlocPickupPartners(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UnBlocPickupPartners implements PickupPartnerEvent {
  const UnBlocPickupPartners({required this.id});

  final String id;

  /// Create a copy of PickupPartnerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnBlocPickupPartnersCopyWith<UnBlocPickupPartners> get copyWith =>
      _$UnBlocPickupPartnersCopyWithImpl<UnBlocPickupPartners>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnBlocPickupPartners &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'PickupPartnerEvent.unBlocPickupPartners(id: $id)';
  }
}

/// @nodoc
abstract mixin class $UnBlocPickupPartnersCopyWith<$Res>
    implements $PickupPartnerEventCopyWith<$Res> {
  factory $UnBlocPickupPartnersCopyWith(UnBlocPickupPartners value,
          $Res Function(UnBlocPickupPartners) _then) =
      _$UnBlocPickupPartnersCopyWithImpl;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$UnBlocPickupPartnersCopyWithImpl<$Res>
    implements $UnBlocPickupPartnersCopyWith<$Res> {
  _$UnBlocPickupPartnersCopyWithImpl(this._self, this._then);

  final UnBlocPickupPartners _self;
  final $Res Function(UnBlocPickupPartners) _then;

  /// Create a copy of PickupPartnerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(UnBlocPickupPartners(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class GetPartnerProfile implements PickupPartnerEvent {
  const GetPartnerProfile();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetPartnerProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PickupPartnerEvent.getPartnerProfile()';
  }
}

/// @nodoc

class AssignOrderToPickupPartner implements PickupPartnerEvent {
  const AssignOrderToPickupPartner(
      {required this.partnerId, required this.orderId});

  final String partnerId;
  final String orderId;

  /// Create a copy of PickupPartnerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AssignOrderToPickupPartnerCopyWith<AssignOrderToPickupPartner>
      get copyWith =>
          _$AssignOrderToPickupPartnerCopyWithImpl<AssignOrderToPickupPartner>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AssignOrderToPickupPartner &&
            (identical(other.partnerId, partnerId) ||
                other.partnerId == partnerId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, partnerId, orderId);

  @override
  String toString() {
    return 'PickupPartnerEvent.assignOrderToPickupPartner(partnerId: $partnerId, orderId: $orderId)';
  }
}

/// @nodoc
abstract mixin class $AssignOrderToPickupPartnerCopyWith<$Res>
    implements $PickupPartnerEventCopyWith<$Res> {
  factory $AssignOrderToPickupPartnerCopyWith(AssignOrderToPickupPartner value,
          $Res Function(AssignOrderToPickupPartner) _then) =
      _$AssignOrderToPickupPartnerCopyWithImpl;
  @useResult
  $Res call({String partnerId, String orderId});
}

/// @nodoc
class _$AssignOrderToPickupPartnerCopyWithImpl<$Res>
    implements $AssignOrderToPickupPartnerCopyWith<$Res> {
  _$AssignOrderToPickupPartnerCopyWithImpl(this._self, this._then);

  final AssignOrderToPickupPartner _self;
  final $Res Function(AssignOrderToPickupPartner) _then;

  /// Create a copy of PickupPartnerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? partnerId = null,
    Object? orderId = null,
  }) {
    return _then(AssignOrderToPickupPartner(
      partnerId: null == partnerId
          ? _self.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class DeAssignOrderFromPickupPartner implements PickupPartnerEvent {
  const DeAssignOrderFromPickupPartner({required this.orderId});

  final String orderId;

  /// Create a copy of PickupPartnerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeAssignOrderFromPickupPartnerCopyWith<DeAssignOrderFromPickupPartner>
      get copyWith => _$DeAssignOrderFromPickupPartnerCopyWithImpl<
          DeAssignOrderFromPickupPartner>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeAssignOrderFromPickupPartner &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @override
  String toString() {
    return 'PickupPartnerEvent.deAssignOrderFromPickupPartner(orderId: $orderId)';
  }
}

/// @nodoc
abstract mixin class $DeAssignOrderFromPickupPartnerCopyWith<$Res>
    implements $PickupPartnerEventCopyWith<$Res> {
  factory $DeAssignOrderFromPickupPartnerCopyWith(
          DeAssignOrderFromPickupPartner value,
          $Res Function(DeAssignOrderFromPickupPartner) _then) =
      _$DeAssignOrderFromPickupPartnerCopyWithImpl;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class _$DeAssignOrderFromPickupPartnerCopyWithImpl<$Res>
    implements $DeAssignOrderFromPickupPartnerCopyWith<$Res> {
  _$DeAssignOrderFromPickupPartnerCopyWithImpl(this._self, this._then);

  final DeAssignOrderFromPickupPartner _self;
  final $Res Function(DeAssignOrderFromPickupPartner) _then;

  /// Create a copy of PickupPartnerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
  }) {
    return _then(DeAssignOrderFromPickupPartner(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class Reset implements PickupPartnerEvent {
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
    return 'PickupPartnerEvent.reset()';
  }
}

/// @nodoc
mixin _$PickupPartnerState {
  bool get isLoading;
  bool get hasError;
  bool get partnerAddingLoader;
  bool get pickupPersonAdded;
  bool get assigningOrderLoader;
  bool get orderAssigned;
  bool get orderDeAssigned;
  bool get popOrderScreen;
  PickUpPerson? get selectedPickup;
  List<PickUpPerson>? get pickUpPersons;
  PartnerProfile? get partnerProfile;
  String? get message;

  /// Create a copy of PickupPartnerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PickupPartnerStateCopyWith<PickupPartnerState> get copyWith =>
      _$PickupPartnerStateCopyWithImpl<PickupPartnerState>(
          this as PickupPartnerState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PickupPartnerState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.partnerAddingLoader, partnerAddingLoader) ||
                other.partnerAddingLoader == partnerAddingLoader) &&
            (identical(other.pickupPersonAdded, pickupPersonAdded) ||
                other.pickupPersonAdded == pickupPersonAdded) &&
            (identical(other.assigningOrderLoader, assigningOrderLoader) ||
                other.assigningOrderLoader == assigningOrderLoader) &&
            (identical(other.orderAssigned, orderAssigned) ||
                other.orderAssigned == orderAssigned) &&
            (identical(other.orderDeAssigned, orderDeAssigned) ||
                other.orderDeAssigned == orderDeAssigned) &&
            (identical(other.popOrderScreen, popOrderScreen) ||
                other.popOrderScreen == popOrderScreen) &&
            (identical(other.selectedPickup, selectedPickup) ||
                other.selectedPickup == selectedPickup) &&
            const DeepCollectionEquality()
                .equals(other.pickUpPersons, pickUpPersons) &&
            (identical(other.partnerProfile, partnerProfile) ||
                other.partnerProfile == partnerProfile) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      partnerAddingLoader,
      pickupPersonAdded,
      assigningOrderLoader,
      orderAssigned,
      orderDeAssigned,
      popOrderScreen,
      selectedPickup,
      const DeepCollectionEquality().hash(pickUpPersons),
      partnerProfile,
      message);

  @override
  String toString() {
    return 'PickupPartnerState(isLoading: $isLoading, hasError: $hasError, partnerAddingLoader: $partnerAddingLoader, pickupPersonAdded: $pickupPersonAdded, assigningOrderLoader: $assigningOrderLoader, orderAssigned: $orderAssigned, orderDeAssigned: $orderDeAssigned, popOrderScreen: $popOrderScreen, selectedPickup: $selectedPickup, pickUpPersons: $pickUpPersons, partnerProfile: $partnerProfile, message: $message)';
  }
}

/// @nodoc
abstract mixin class $PickupPartnerStateCopyWith<$Res> {
  factory $PickupPartnerStateCopyWith(
          PickupPartnerState value, $Res Function(PickupPartnerState) _then) =
      _$PickupPartnerStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool partnerAddingLoader,
      bool pickupPersonAdded,
      bool assigningOrderLoader,
      bool orderAssigned,
      bool orderDeAssigned,
      bool popOrderScreen,
      PickUpPerson? selectedPickup,
      List<PickUpPerson>? pickUpPersons,
      PartnerProfile? partnerProfile,
      String? message});
}

/// @nodoc
class _$PickupPartnerStateCopyWithImpl<$Res>
    implements $PickupPartnerStateCopyWith<$Res> {
  _$PickupPartnerStateCopyWithImpl(this._self, this._then);

  final PickupPartnerState _self;
  final $Res Function(PickupPartnerState) _then;

  /// Create a copy of PickupPartnerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? partnerAddingLoader = null,
    Object? pickupPersonAdded = null,
    Object? assigningOrderLoader = null,
    Object? orderAssigned = null,
    Object? orderDeAssigned = null,
    Object? popOrderScreen = null,
    Object? selectedPickup = freezed,
    Object? pickUpPersons = freezed,
    Object? partnerProfile = freezed,
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
      partnerAddingLoader: null == partnerAddingLoader
          ? _self.partnerAddingLoader
          : partnerAddingLoader // ignore: cast_nullable_to_non_nullable
              as bool,
      pickupPersonAdded: null == pickupPersonAdded
          ? _self.pickupPersonAdded
          : pickupPersonAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      assigningOrderLoader: null == assigningOrderLoader
          ? _self.assigningOrderLoader
          : assigningOrderLoader // ignore: cast_nullable_to_non_nullable
              as bool,
      orderAssigned: null == orderAssigned
          ? _self.orderAssigned
          : orderAssigned // ignore: cast_nullable_to_non_nullable
              as bool,
      orderDeAssigned: null == orderDeAssigned
          ? _self.orderDeAssigned
          : orderDeAssigned // ignore: cast_nullable_to_non_nullable
              as bool,
      popOrderScreen: null == popOrderScreen
          ? _self.popOrderScreen
          : popOrderScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedPickup: freezed == selectedPickup
          ? _self.selectedPickup
          : selectedPickup // ignore: cast_nullable_to_non_nullable
              as PickUpPerson?,
      pickUpPersons: freezed == pickUpPersons
          ? _self.pickUpPersons
          : pickUpPersons // ignore: cast_nullable_to_non_nullable
              as List<PickUpPerson>?,
      partnerProfile: freezed == partnerProfile
          ? _self.partnerProfile
          : partnerProfile // ignore: cast_nullable_to_non_nullable
              as PartnerProfile?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PickupPartnerState].
extension PickupPartnerStatePatterns on PickupPartnerState {
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
            bool partnerAddingLoader,
            bool pickupPersonAdded,
            bool assigningOrderLoader,
            bool orderAssigned,
            bool orderDeAssigned,
            bool popOrderScreen,
            PickUpPerson? selectedPickup,
            List<PickUpPerson>? pickUpPersons,
            PartnerProfile? partnerProfile,
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
            _that.partnerAddingLoader,
            _that.pickupPersonAdded,
            _that.assigningOrderLoader,
            _that.orderAssigned,
            _that.orderDeAssigned,
            _that.popOrderScreen,
            _that.selectedPickup,
            _that.pickUpPersons,
            _that.partnerProfile,
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
            bool partnerAddingLoader,
            bool pickupPersonAdded,
            bool assigningOrderLoader,
            bool orderAssigned,
            bool orderDeAssigned,
            bool popOrderScreen,
            PickUpPerson? selectedPickup,
            List<PickUpPerson>? pickUpPersons,
            PartnerProfile? partnerProfile,
            String? message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return $default(
            _that.isLoading,
            _that.hasError,
            _that.partnerAddingLoader,
            _that.pickupPersonAdded,
            _that.assigningOrderLoader,
            _that.orderAssigned,
            _that.orderDeAssigned,
            _that.popOrderScreen,
            _that.selectedPickup,
            _that.pickUpPersons,
            _that.partnerProfile,
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
            bool partnerAddingLoader,
            bool pickupPersonAdded,
            bool assigningOrderLoader,
            bool orderAssigned,
            bool orderDeAssigned,
            bool popOrderScreen,
            PickUpPerson? selectedPickup,
            List<PickUpPerson>? pickUpPersons,
            PartnerProfile? partnerProfile,
            String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Initial() when $default != null:
        return $default(
            _that.isLoading,
            _that.hasError,
            _that.partnerAddingLoader,
            _that.pickupPersonAdded,
            _that.assigningOrderLoader,
            _that.orderAssigned,
            _that.orderDeAssigned,
            _that.popOrderScreen,
            _that.selectedPickup,
            _that.pickUpPersons,
            _that.partnerProfile,
            _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements PickupPartnerState {
  const _Initial(
      {required this.isLoading,
      required this.hasError,
      required this.partnerAddingLoader,
      required this.pickupPersonAdded,
      required this.assigningOrderLoader,
      required this.orderAssigned,
      required this.orderDeAssigned,
      required this.popOrderScreen,
      this.selectedPickup,
      final List<PickUpPerson>? pickUpPersons,
      this.partnerProfile,
      this.message})
      : _pickUpPersons = pickUpPersons;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool partnerAddingLoader;
  @override
  final bool pickupPersonAdded;
  @override
  final bool assigningOrderLoader;
  @override
  final bool orderAssigned;
  @override
  final bool orderDeAssigned;
  @override
  final bool popOrderScreen;
  @override
  final PickUpPerson? selectedPickup;
  final List<PickUpPerson>? _pickUpPersons;
  @override
  List<PickUpPerson>? get pickUpPersons {
    final value = _pickUpPersons;
    if (value == null) return null;
    if (_pickUpPersons is EqualUnmodifiableListView) return _pickUpPersons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PartnerProfile? partnerProfile;
  @override
  final String? message;

  /// Create a copy of PickupPartnerState
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
            (identical(other.partnerAddingLoader, partnerAddingLoader) ||
                other.partnerAddingLoader == partnerAddingLoader) &&
            (identical(other.pickupPersonAdded, pickupPersonAdded) ||
                other.pickupPersonAdded == pickupPersonAdded) &&
            (identical(other.assigningOrderLoader, assigningOrderLoader) ||
                other.assigningOrderLoader == assigningOrderLoader) &&
            (identical(other.orderAssigned, orderAssigned) ||
                other.orderAssigned == orderAssigned) &&
            (identical(other.orderDeAssigned, orderDeAssigned) ||
                other.orderDeAssigned == orderDeAssigned) &&
            (identical(other.popOrderScreen, popOrderScreen) ||
                other.popOrderScreen == popOrderScreen) &&
            (identical(other.selectedPickup, selectedPickup) ||
                other.selectedPickup == selectedPickup) &&
            const DeepCollectionEquality()
                .equals(other._pickUpPersons, _pickUpPersons) &&
            (identical(other.partnerProfile, partnerProfile) ||
                other.partnerProfile == partnerProfile) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      partnerAddingLoader,
      pickupPersonAdded,
      assigningOrderLoader,
      orderAssigned,
      orderDeAssigned,
      popOrderScreen,
      selectedPickup,
      const DeepCollectionEquality().hash(_pickUpPersons),
      partnerProfile,
      message);

  @override
  String toString() {
    return 'PickupPartnerState(isLoading: $isLoading, hasError: $hasError, partnerAddingLoader: $partnerAddingLoader, pickupPersonAdded: $pickupPersonAdded, assigningOrderLoader: $assigningOrderLoader, orderAssigned: $orderAssigned, orderDeAssigned: $orderDeAssigned, popOrderScreen: $popOrderScreen, selectedPickup: $selectedPickup, pickUpPersons: $pickUpPersons, partnerProfile: $partnerProfile, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res>
    implements $PickupPartnerStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) =
      __$InitialCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool partnerAddingLoader,
      bool pickupPersonAdded,
      bool assigningOrderLoader,
      bool orderAssigned,
      bool orderDeAssigned,
      bool popOrderScreen,
      PickUpPerson? selectedPickup,
      List<PickUpPerson>? pickUpPersons,
      PartnerProfile? partnerProfile,
      String? message});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

  /// Create a copy of PickupPartnerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? partnerAddingLoader = null,
    Object? pickupPersonAdded = null,
    Object? assigningOrderLoader = null,
    Object? orderAssigned = null,
    Object? orderDeAssigned = null,
    Object? popOrderScreen = null,
    Object? selectedPickup = freezed,
    Object? pickUpPersons = freezed,
    Object? partnerProfile = freezed,
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
      partnerAddingLoader: null == partnerAddingLoader
          ? _self.partnerAddingLoader
          : partnerAddingLoader // ignore: cast_nullable_to_non_nullable
              as bool,
      pickupPersonAdded: null == pickupPersonAdded
          ? _self.pickupPersonAdded
          : pickupPersonAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      assigningOrderLoader: null == assigningOrderLoader
          ? _self.assigningOrderLoader
          : assigningOrderLoader // ignore: cast_nullable_to_non_nullable
              as bool,
      orderAssigned: null == orderAssigned
          ? _self.orderAssigned
          : orderAssigned // ignore: cast_nullable_to_non_nullable
              as bool,
      orderDeAssigned: null == orderDeAssigned
          ? _self.orderDeAssigned
          : orderDeAssigned // ignore: cast_nullable_to_non_nullable
              as bool,
      popOrderScreen: null == popOrderScreen
          ? _self.popOrderScreen
          : popOrderScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedPickup: freezed == selectedPickup
          ? _self.selectedPickup
          : selectedPickup // ignore: cast_nullable_to_non_nullable
              as PickUpPerson?,
      pickUpPersons: freezed == pickUpPersons
          ? _self._pickUpPersons
          : pickUpPersons // ignore: cast_nullable_to_non_nullable
              as List<PickUpPerson>?,
      partnerProfile: freezed == partnerProfile
          ? _self.partnerProfile
          : partnerProfile // ignore: cast_nullable_to_non_nullable
              as PartnerProfile?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
