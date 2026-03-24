// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrdersEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrdersEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrdersEvent()';
  }
}

/// @nodoc
class $OrdersEventCopyWith<$Res> {
  $OrdersEventCopyWith(OrdersEvent _, $Res Function(OrdersEvent) __);
}

/// Adds pattern-matching-related methods to [OrdersEvent].
extension OrdersEventPatterns on OrdersEvent {
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
    TResult Function(AcceptOrder value)? acceptOrder,
    TResult Function(GetOrderDetail value)? getOrderDetail,
    TResult Function(GetOrderDetailNotification value)?
        getOrderDetailNotification,
    TResult Function(CancelOrder value)? cancelOrder,
    TResult Function(CompleteOrder value)? completeOrder,
    TResult Function(GetNewOrder value)? getNewOrder,
    TResult Function(GetPartnerOrders value)? getPartnerOrders,
    TResult Function(RemovePickupPartner value)? removePickupPartner,
    TResult Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult Function(RefreshNewOrder value)? refreshNewOrder,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(ChangePickupPartner value)? changePickupPartner,
    TResult Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult Function(AddDiviceBill value)? addDiviceBill,
    TResult Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult Function(AddImeiImage value)? addImeiImage,
    TResult Function(RemoveImeiImage value)? removeImeiImage,
    TResult Function(AddIdCardImage value)? addIdCardImage,
    TResult Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult Function(AddDeviceImages value)? addDeviceImages,
    TResult Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult Function(AddSignatureImage value)? addSignatureImage,
    TResult Function(RemoveSignatureImage value)? removeSignatureImage,
    TResult Function(DownloadOrderInvoice value)? downloadOrderInvoice,
    TResult Function(ChangeNotificationStatusOrder value)?
        changeNotificationStatusOrder,
    TResult Function(Reset value)? reset,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AcceptOrder() when acceptOrder != null:
        return acceptOrder(_that);
      case GetOrderDetail() when getOrderDetail != null:
        return getOrderDetail(_that);
      case GetOrderDetailNotification() when getOrderDetailNotification != null:
        return getOrderDetailNotification(_that);
      case CancelOrder() when cancelOrder != null:
        return cancelOrder(_that);
      case CompleteOrder() when completeOrder != null:
        return completeOrder(_that);
      case GetNewOrder() when getNewOrder != null:
        return getNewOrder(_that);
      case GetPartnerOrders() when getPartnerOrders != null:
        return getPartnerOrders(_that);
      case RemovePickupPartner() when removePickupPartner != null:
        return removePickupPartner(_that);
      case RefresPartnerOrders() when refresPartnerOrders != null:
        return refresPartnerOrders(_that);
      case RefreshNewOrder() when refreshNewOrder != null:
        return refreshNewOrder(_that);
      case ChangeTab() when changeTab != null:
        return changeTab(_that);
      case ChangePickupPartner() when changePickupPartner != null:
        return changePickupPartner(_that);
      case CheckErrorCompleteOrder() when checkErrorCompleteOrder != null:
        return checkErrorCompleteOrder(_that);
      case AddDiviceBill() when addDiviceBill != null:
        return addDiviceBill(_that);
      case RemoveDiviceBill() when removeDiviceBill != null:
        return removeDiviceBill(_that);
      case AddImeiImage() when addImeiImage != null:
        return addImeiImage(_that);
      case RemoveImeiImage() when removeImeiImage != null:
        return removeImeiImage(_that);
      case AddIdCardImage() when addIdCardImage != null:
        return addIdCardImage(_that);
      case RemoveIdCardImage() when removeIdCardImage != null:
        return removeIdCardImage(_that);
      case AddDeviceImages() when addDeviceImages != null:
        return addDeviceImages(_that);
      case RemoveDeviceImage() when removeDeviceImage != null:
        return removeDeviceImage(_that);
      case AddSignatureImage() when addSignatureImage != null:
        return addSignatureImage(_that);
      case RemoveSignatureImage() when removeSignatureImage != null:
        return removeSignatureImage(_that);
      case DownloadOrderInvoice() when downloadOrderInvoice != null:
        return downloadOrderInvoice(_that);
      case ChangeNotificationStatusOrder()
          when changeNotificationStatusOrder != null:
        return changeNotificationStatusOrder(_that);
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
    required TResult Function(AcceptOrder value) acceptOrder,
    required TResult Function(GetOrderDetail value) getOrderDetail,
    required TResult Function(GetOrderDetailNotification value)
        getOrderDetailNotification,
    required TResult Function(CancelOrder value) cancelOrder,
    required TResult Function(CompleteOrder value) completeOrder,
    required TResult Function(GetNewOrder value) getNewOrder,
    required TResult Function(GetPartnerOrders value) getPartnerOrders,
    required TResult Function(RemovePickupPartner value) removePickupPartner,
    required TResult Function(RefresPartnerOrders value) refresPartnerOrders,
    required TResult Function(RefreshNewOrder value) refreshNewOrder,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(ChangePickupPartner value) changePickupPartner,
    required TResult Function(CheckErrorCompleteOrder value)
        checkErrorCompleteOrder,
    required TResult Function(AddDiviceBill value) addDiviceBill,
    required TResult Function(RemoveDiviceBill value) removeDiviceBill,
    required TResult Function(AddImeiImage value) addImeiImage,
    required TResult Function(RemoveImeiImage value) removeImeiImage,
    required TResult Function(AddIdCardImage value) addIdCardImage,
    required TResult Function(RemoveIdCardImage value) removeIdCardImage,
    required TResult Function(AddDeviceImages value) addDeviceImages,
    required TResult Function(RemoveDeviceImage value) removeDeviceImage,
    required TResult Function(AddSignatureImage value) addSignatureImage,
    required TResult Function(RemoveSignatureImage value) removeSignatureImage,
    required TResult Function(DownloadOrderInvoice value) downloadOrderInvoice,
    required TResult Function(ChangeNotificationStatusOrder value)
        changeNotificationStatusOrder,
    required TResult Function(Reset value) reset,
  }) {
    final _that = this;
    switch (_that) {
      case AcceptOrder():
        return acceptOrder(_that);
      case GetOrderDetail():
        return getOrderDetail(_that);
      case GetOrderDetailNotification():
        return getOrderDetailNotification(_that);
      case CancelOrder():
        return cancelOrder(_that);
      case CompleteOrder():
        return completeOrder(_that);
      case GetNewOrder():
        return getNewOrder(_that);
      case GetPartnerOrders():
        return getPartnerOrders(_that);
      case RemovePickupPartner():
        return removePickupPartner(_that);
      case RefresPartnerOrders():
        return refresPartnerOrders(_that);
      case RefreshNewOrder():
        return refreshNewOrder(_that);
      case ChangeTab():
        return changeTab(_that);
      case ChangePickupPartner():
        return changePickupPartner(_that);
      case CheckErrorCompleteOrder():
        return checkErrorCompleteOrder(_that);
      case AddDiviceBill():
        return addDiviceBill(_that);
      case RemoveDiviceBill():
        return removeDiviceBill(_that);
      case AddImeiImage():
        return addImeiImage(_that);
      case RemoveImeiImage():
        return removeImeiImage(_that);
      case AddIdCardImage():
        return addIdCardImage(_that);
      case RemoveIdCardImage():
        return removeIdCardImage(_that);
      case AddDeviceImages():
        return addDeviceImages(_that);
      case RemoveDeviceImage():
        return removeDeviceImage(_that);
      case AddSignatureImage():
        return addSignatureImage(_that);
      case RemoveSignatureImage():
        return removeSignatureImage(_that);
      case DownloadOrderInvoice():
        return downloadOrderInvoice(_that);
      case ChangeNotificationStatusOrder():
        return changeNotificationStatusOrder(_that);
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
    TResult? Function(AcceptOrder value)? acceptOrder,
    TResult? Function(GetOrderDetail value)? getOrderDetail,
    TResult? Function(GetOrderDetailNotification value)?
        getOrderDetailNotification,
    TResult? Function(CancelOrder value)? cancelOrder,
    TResult? Function(CompleteOrder value)? completeOrder,
    TResult? Function(GetNewOrder value)? getNewOrder,
    TResult? Function(GetPartnerOrders value)? getPartnerOrders,
    TResult? Function(RemovePickupPartner value)? removePickupPartner,
    TResult? Function(RefresPartnerOrders value)? refresPartnerOrders,
    TResult? Function(RefreshNewOrder value)? refreshNewOrder,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(ChangePickupPartner value)? changePickupPartner,
    TResult? Function(CheckErrorCompleteOrder value)? checkErrorCompleteOrder,
    TResult? Function(AddDiviceBill value)? addDiviceBill,
    TResult? Function(RemoveDiviceBill value)? removeDiviceBill,
    TResult? Function(AddImeiImage value)? addImeiImage,
    TResult? Function(RemoveImeiImage value)? removeImeiImage,
    TResult? Function(AddIdCardImage value)? addIdCardImage,
    TResult? Function(RemoveIdCardImage value)? removeIdCardImage,
    TResult? Function(AddDeviceImages value)? addDeviceImages,
    TResult? Function(RemoveDeviceImage value)? removeDeviceImage,
    TResult? Function(AddSignatureImage value)? addSignatureImage,
    TResult? Function(RemoveSignatureImage value)? removeSignatureImage,
    TResult? Function(DownloadOrderInvoice value)? downloadOrderInvoice,
    TResult? Function(ChangeNotificationStatusOrder value)?
        changeNotificationStatusOrder,
    TResult? Function(Reset value)? reset,
  }) {
    final _that = this;
    switch (_that) {
      case AcceptOrder() when acceptOrder != null:
        return acceptOrder(_that);
      case GetOrderDetail() when getOrderDetail != null:
        return getOrderDetail(_that);
      case GetOrderDetailNotification() when getOrderDetailNotification != null:
        return getOrderDetailNotification(_that);
      case CancelOrder() when cancelOrder != null:
        return cancelOrder(_that);
      case CompleteOrder() when completeOrder != null:
        return completeOrder(_that);
      case GetNewOrder() when getNewOrder != null:
        return getNewOrder(_that);
      case GetPartnerOrders() when getPartnerOrders != null:
        return getPartnerOrders(_that);
      case RemovePickupPartner() when removePickupPartner != null:
        return removePickupPartner(_that);
      case RefresPartnerOrders() when refresPartnerOrders != null:
        return refresPartnerOrders(_that);
      case RefreshNewOrder() when refreshNewOrder != null:
        return refreshNewOrder(_that);
      case ChangeTab() when changeTab != null:
        return changeTab(_that);
      case ChangePickupPartner() when changePickupPartner != null:
        return changePickupPartner(_that);
      case CheckErrorCompleteOrder() when checkErrorCompleteOrder != null:
        return checkErrorCompleteOrder(_that);
      case AddDiviceBill() when addDiviceBill != null:
        return addDiviceBill(_that);
      case RemoveDiviceBill() when removeDiviceBill != null:
        return removeDiviceBill(_that);
      case AddImeiImage() when addImeiImage != null:
        return addImeiImage(_that);
      case RemoveImeiImage() when removeImeiImage != null:
        return removeImeiImage(_that);
      case AddIdCardImage() when addIdCardImage != null:
        return addIdCardImage(_that);
      case RemoveIdCardImage() when removeIdCardImage != null:
        return removeIdCardImage(_that);
      case AddDeviceImages() when addDeviceImages != null:
        return addDeviceImages(_that);
      case RemoveDeviceImage() when removeDeviceImage != null:
        return removeDeviceImage(_that);
      case AddSignatureImage() when addSignatureImage != null:
        return addSignatureImage(_that);
      case RemoveSignatureImage() when removeSignatureImage != null:
        return removeSignatureImage(_that);
      case DownloadOrderInvoice() when downloadOrderInvoice != null:
        return downloadOrderInvoice(_that);
      case ChangeNotificationStatusOrder()
          when changeNotificationStatusOrder != null:
        return changeNotificationStatusOrder(_that);
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
    TResult Function(String orderId)? acceptOrder,
    TResult Function(String orderId)? getOrderDetail,
    TResult Function(String orderId)? getOrderDetailNotification,
    TResult Function(String orderId, String reason)? cancelOrder,
    TResult Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult Function(bool call)? getNewOrder,
    TResult Function(bool call)? getPartnerOrders,
    TResult Function(String orderId)? removePickupPartner,
    TResult Function()? refresPartnerOrders,
    TResult Function()? refreshNewOrder,
    TResult Function(int tab)? changeTab,
    TResult Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult Function()? checkErrorCompleteOrder,
    TResult Function()? addDiviceBill,
    TResult Function()? removeDiviceBill,
    TResult Function()? addImeiImage,
    TResult Function()? removeImeiImage,
    TResult Function()? addIdCardImage,
    TResult Function(int index)? removeIdCardImage,
    TResult Function()? addDeviceImages,
    TResult Function(int index)? removeDeviceImage,
    TResult Function(ImageModel signature)? addSignatureImage,
    TResult Function()? removeSignatureImage,
    TResult Function(String orderId)? downloadOrderInvoice,
    TResult Function(String orderId)? changeNotificationStatusOrder,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AcceptOrder() when acceptOrder != null:
        return acceptOrder(_that.orderId);
      case GetOrderDetail() when getOrderDetail != null:
        return getOrderDetail(_that.orderId);
      case GetOrderDetailNotification() when getOrderDetailNotification != null:
        return getOrderDetailNotification(_that.orderId);
      case CancelOrder() when cancelOrder != null:
        return cancelOrder(_that.orderId, _that.reason);
      case CompleteOrder() when completeOrder != null:
        return completeOrder(_that.orderId, _that.completeOrderModel);
      case GetNewOrder() when getNewOrder != null:
        return getNewOrder(_that.call);
      case GetPartnerOrders() when getPartnerOrders != null:
        return getPartnerOrders(_that.call);
      case RemovePickupPartner() when removePickupPartner != null:
        return removePickupPartner(_that.orderId);
      case RefresPartnerOrders() when refresPartnerOrders != null:
        return refresPartnerOrders();
      case RefreshNewOrder() when refreshNewOrder != null:
        return refreshNewOrder();
      case ChangeTab() when changeTab != null:
        return changeTab(_that.tab);
      case ChangePickupPartner() when changePickupPartner != null:
        return changePickupPartner(_that.pickUpPerson, _that.orderId);
      case CheckErrorCompleteOrder() when checkErrorCompleteOrder != null:
        return checkErrorCompleteOrder();
      case AddDiviceBill() when addDiviceBill != null:
        return addDiviceBill();
      case RemoveDiviceBill() when removeDiviceBill != null:
        return removeDiviceBill();
      case AddImeiImage() when addImeiImage != null:
        return addImeiImage();
      case RemoveImeiImage() when removeImeiImage != null:
        return removeImeiImage();
      case AddIdCardImage() when addIdCardImage != null:
        return addIdCardImage();
      case RemoveIdCardImage() when removeIdCardImage != null:
        return removeIdCardImage(_that.index);
      case AddDeviceImages() when addDeviceImages != null:
        return addDeviceImages();
      case RemoveDeviceImage() when removeDeviceImage != null:
        return removeDeviceImage(_that.index);
      case AddSignatureImage() when addSignatureImage != null:
        return addSignatureImage(_that.signature);
      case RemoveSignatureImage() when removeSignatureImage != null:
        return removeSignatureImage();
      case DownloadOrderInvoice() when downloadOrderInvoice != null:
        return downloadOrderInvoice(_that.orderId);
      case ChangeNotificationStatusOrder()
          when changeNotificationStatusOrder != null:
        return changeNotificationStatusOrder(_that.orderId);
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
    required TResult Function(String orderId) acceptOrder,
    required TResult Function(String orderId) getOrderDetail,
    required TResult Function(String orderId) getOrderDetailNotification,
    required TResult Function(String orderId, String reason) cancelOrder,
    required TResult Function(
            String orderId, CompleteOrderModel completeOrderModel)
        completeOrder,
    required TResult Function(bool call) getNewOrder,
    required TResult Function(bool call) getPartnerOrders,
    required TResult Function(String orderId) removePickupPartner,
    required TResult Function() refresPartnerOrders,
    required TResult Function() refreshNewOrder,
    required TResult Function(int tab) changeTab,
    required TResult Function(PickUpPerson pickUpPerson, String orderId)
        changePickupPartner,
    required TResult Function() checkErrorCompleteOrder,
    required TResult Function() addDiviceBill,
    required TResult Function() removeDiviceBill,
    required TResult Function() addImeiImage,
    required TResult Function() removeImeiImage,
    required TResult Function() addIdCardImage,
    required TResult Function(int index) removeIdCardImage,
    required TResult Function() addDeviceImages,
    required TResult Function(int index) removeDeviceImage,
    required TResult Function(ImageModel signature) addSignatureImage,
    required TResult Function() removeSignatureImage,
    required TResult Function(String orderId) downloadOrderInvoice,
    required TResult Function(String orderId) changeNotificationStatusOrder,
    required TResult Function() reset,
  }) {
    final _that = this;
    switch (_that) {
      case AcceptOrder():
        return acceptOrder(_that.orderId);
      case GetOrderDetail():
        return getOrderDetail(_that.orderId);
      case GetOrderDetailNotification():
        return getOrderDetailNotification(_that.orderId);
      case CancelOrder():
        return cancelOrder(_that.orderId, _that.reason);
      case CompleteOrder():
        return completeOrder(_that.orderId, _that.completeOrderModel);
      case GetNewOrder():
        return getNewOrder(_that.call);
      case GetPartnerOrders():
        return getPartnerOrders(_that.call);
      case RemovePickupPartner():
        return removePickupPartner(_that.orderId);
      case RefresPartnerOrders():
        return refresPartnerOrders();
      case RefreshNewOrder():
        return refreshNewOrder();
      case ChangeTab():
        return changeTab(_that.tab);
      case ChangePickupPartner():
        return changePickupPartner(_that.pickUpPerson, _that.orderId);
      case CheckErrorCompleteOrder():
        return checkErrorCompleteOrder();
      case AddDiviceBill():
        return addDiviceBill();
      case RemoveDiviceBill():
        return removeDiviceBill();
      case AddImeiImage():
        return addImeiImage();
      case RemoveImeiImage():
        return removeImeiImage();
      case AddIdCardImage():
        return addIdCardImage();
      case RemoveIdCardImage():
        return removeIdCardImage(_that.index);
      case AddDeviceImages():
        return addDeviceImages();
      case RemoveDeviceImage():
        return removeDeviceImage(_that.index);
      case AddSignatureImage():
        return addSignatureImage(_that.signature);
      case RemoveSignatureImage():
        return removeSignatureImage();
      case DownloadOrderInvoice():
        return downloadOrderInvoice(_that.orderId);
      case ChangeNotificationStatusOrder():
        return changeNotificationStatusOrder(_that.orderId);
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
    TResult? Function(String orderId)? acceptOrder,
    TResult? Function(String orderId)? getOrderDetail,
    TResult? Function(String orderId)? getOrderDetailNotification,
    TResult? Function(String orderId, String reason)? cancelOrder,
    TResult? Function(String orderId, CompleteOrderModel completeOrderModel)?
        completeOrder,
    TResult? Function(bool call)? getNewOrder,
    TResult? Function(bool call)? getPartnerOrders,
    TResult? Function(String orderId)? removePickupPartner,
    TResult? Function()? refresPartnerOrders,
    TResult? Function()? refreshNewOrder,
    TResult? Function(int tab)? changeTab,
    TResult? Function(PickUpPerson pickUpPerson, String orderId)?
        changePickupPartner,
    TResult? Function()? checkErrorCompleteOrder,
    TResult? Function()? addDiviceBill,
    TResult? Function()? removeDiviceBill,
    TResult? Function()? addImeiImage,
    TResult? Function()? removeImeiImage,
    TResult? Function()? addIdCardImage,
    TResult? Function(int index)? removeIdCardImage,
    TResult? Function()? addDeviceImages,
    TResult? Function(int index)? removeDeviceImage,
    TResult? Function(ImageModel signature)? addSignatureImage,
    TResult? Function()? removeSignatureImage,
    TResult? Function(String orderId)? downloadOrderInvoice,
    TResult? Function(String orderId)? changeNotificationStatusOrder,
    TResult? Function()? reset,
  }) {
    final _that = this;
    switch (_that) {
      case AcceptOrder() when acceptOrder != null:
        return acceptOrder(_that.orderId);
      case GetOrderDetail() when getOrderDetail != null:
        return getOrderDetail(_that.orderId);
      case GetOrderDetailNotification() when getOrderDetailNotification != null:
        return getOrderDetailNotification(_that.orderId);
      case CancelOrder() when cancelOrder != null:
        return cancelOrder(_that.orderId, _that.reason);
      case CompleteOrder() when completeOrder != null:
        return completeOrder(_that.orderId, _that.completeOrderModel);
      case GetNewOrder() when getNewOrder != null:
        return getNewOrder(_that.call);
      case GetPartnerOrders() when getPartnerOrders != null:
        return getPartnerOrders(_that.call);
      case RemovePickupPartner() when removePickupPartner != null:
        return removePickupPartner(_that.orderId);
      case RefresPartnerOrders() when refresPartnerOrders != null:
        return refresPartnerOrders();
      case RefreshNewOrder() when refreshNewOrder != null:
        return refreshNewOrder();
      case ChangeTab() when changeTab != null:
        return changeTab(_that.tab);
      case ChangePickupPartner() when changePickupPartner != null:
        return changePickupPartner(_that.pickUpPerson, _that.orderId);
      case CheckErrorCompleteOrder() when checkErrorCompleteOrder != null:
        return checkErrorCompleteOrder();
      case AddDiviceBill() when addDiviceBill != null:
        return addDiviceBill();
      case RemoveDiviceBill() when removeDiviceBill != null:
        return removeDiviceBill();
      case AddImeiImage() when addImeiImage != null:
        return addImeiImage();
      case RemoveImeiImage() when removeImeiImage != null:
        return removeImeiImage();
      case AddIdCardImage() when addIdCardImage != null:
        return addIdCardImage();
      case RemoveIdCardImage() when removeIdCardImage != null:
        return removeIdCardImage(_that.index);
      case AddDeviceImages() when addDeviceImages != null:
        return addDeviceImages();
      case RemoveDeviceImage() when removeDeviceImage != null:
        return removeDeviceImage(_that.index);
      case AddSignatureImage() when addSignatureImage != null:
        return addSignatureImage(_that.signature);
      case RemoveSignatureImage() when removeSignatureImage != null:
        return removeSignatureImage();
      case DownloadOrderInvoice() when downloadOrderInvoice != null:
        return downloadOrderInvoice(_that.orderId);
      case ChangeNotificationStatusOrder()
          when changeNotificationStatusOrder != null:
        return changeNotificationStatusOrder(_that.orderId);
      case Reset() when reset != null:
        return reset();
      case _:
        return null;
    }
  }
}

/// @nodoc

class AcceptOrder implements OrdersEvent {
  const AcceptOrder({required this.orderId});

  final String orderId;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AcceptOrderCopyWith<AcceptOrder> get copyWith =>
      _$AcceptOrderCopyWithImpl<AcceptOrder>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AcceptOrder &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @override
  String toString() {
    return 'OrdersEvent.acceptOrder(orderId: $orderId)';
  }
}

/// @nodoc
abstract mixin class $AcceptOrderCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory $AcceptOrderCopyWith(
          AcceptOrder value, $Res Function(AcceptOrder) _then) =
      _$AcceptOrderCopyWithImpl;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class _$AcceptOrderCopyWithImpl<$Res> implements $AcceptOrderCopyWith<$Res> {
  _$AcceptOrderCopyWithImpl(this._self, this._then);

  final AcceptOrder _self;
  final $Res Function(AcceptOrder) _then;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
  }) {
    return _then(AcceptOrder(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class GetOrderDetail implements OrdersEvent {
  const GetOrderDetail({required this.orderId});

  final String orderId;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetOrderDetailCopyWith<GetOrderDetail> get copyWith =>
      _$GetOrderDetailCopyWithImpl<GetOrderDetail>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetOrderDetail &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @override
  String toString() {
    return 'OrdersEvent.getOrderDetail(orderId: $orderId)';
  }
}

/// @nodoc
abstract mixin class $GetOrderDetailCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory $GetOrderDetailCopyWith(
          GetOrderDetail value, $Res Function(GetOrderDetail) _then) =
      _$GetOrderDetailCopyWithImpl;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class _$GetOrderDetailCopyWithImpl<$Res>
    implements $GetOrderDetailCopyWith<$Res> {
  _$GetOrderDetailCopyWithImpl(this._self, this._then);

  final GetOrderDetail _self;
  final $Res Function(GetOrderDetail) _then;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
  }) {
    return _then(GetOrderDetail(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class GetOrderDetailNotification implements OrdersEvent {
  const GetOrderDetailNotification({required this.orderId});

  final String orderId;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetOrderDetailNotificationCopyWith<GetOrderDetailNotification>
      get copyWith =>
          _$GetOrderDetailNotificationCopyWithImpl<GetOrderDetailNotification>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetOrderDetailNotification &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @override
  String toString() {
    return 'OrdersEvent.getOrderDetailNotification(orderId: $orderId)';
  }
}

/// @nodoc
abstract mixin class $GetOrderDetailNotificationCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory $GetOrderDetailNotificationCopyWith(GetOrderDetailNotification value,
          $Res Function(GetOrderDetailNotification) _then) =
      _$GetOrderDetailNotificationCopyWithImpl;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class _$GetOrderDetailNotificationCopyWithImpl<$Res>
    implements $GetOrderDetailNotificationCopyWith<$Res> {
  _$GetOrderDetailNotificationCopyWithImpl(this._self, this._then);

  final GetOrderDetailNotification _self;
  final $Res Function(GetOrderDetailNotification) _then;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
  }) {
    return _then(GetOrderDetailNotification(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class CancelOrder implements OrdersEvent {
  const CancelOrder({required this.orderId, required this.reason});

  final String orderId;
  final String reason;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CancelOrderCopyWith<CancelOrder> get copyWith =>
      _$CancelOrderCopyWithImpl<CancelOrder>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CancelOrder &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, reason);

  @override
  String toString() {
    return 'OrdersEvent.cancelOrder(orderId: $orderId, reason: $reason)';
  }
}

/// @nodoc
abstract mixin class $CancelOrderCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory $CancelOrderCopyWith(
          CancelOrder value, $Res Function(CancelOrder) _then) =
      _$CancelOrderCopyWithImpl;
  @useResult
  $Res call({String orderId, String reason});
}

/// @nodoc
class _$CancelOrderCopyWithImpl<$Res> implements $CancelOrderCopyWith<$Res> {
  _$CancelOrderCopyWithImpl(this._self, this._then);

  final CancelOrder _self;
  final $Res Function(CancelOrder) _then;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
    Object? reason = null,
  }) {
    return _then(CancelOrder(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class CompleteOrder implements OrdersEvent {
  const CompleteOrder(
      {required this.orderId, required this.completeOrderModel});

  final String orderId;
  final CompleteOrderModel completeOrderModel;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CompleteOrderCopyWith<CompleteOrder> get copyWith =>
      _$CompleteOrderCopyWithImpl<CompleteOrder>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompleteOrder &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.completeOrderModel, completeOrderModel) ||
                other.completeOrderModel == completeOrderModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, completeOrderModel);

  @override
  String toString() {
    return 'OrdersEvent.completeOrder(orderId: $orderId, completeOrderModel: $completeOrderModel)';
  }
}

/// @nodoc
abstract mixin class $CompleteOrderCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory $CompleteOrderCopyWith(
          CompleteOrder value, $Res Function(CompleteOrder) _then) =
      _$CompleteOrderCopyWithImpl;
  @useResult
  $Res call({String orderId, CompleteOrderModel completeOrderModel});
}

/// @nodoc
class _$CompleteOrderCopyWithImpl<$Res>
    implements $CompleteOrderCopyWith<$Res> {
  _$CompleteOrderCopyWithImpl(this._self, this._then);

  final CompleteOrder _self;
  final $Res Function(CompleteOrder) _then;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
    Object? completeOrderModel = null,
  }) {
    return _then(CompleteOrder(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      completeOrderModel: null == completeOrderModel
          ? _self.completeOrderModel
          : completeOrderModel // ignore: cast_nullable_to_non_nullable
              as CompleteOrderModel,
    ));
  }
}

/// @nodoc

class GetNewOrder implements OrdersEvent {
  const GetNewOrder({required this.call});

  final bool call;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetNewOrderCopyWith<GetNewOrder> get copyWith =>
      _$GetNewOrderCopyWithImpl<GetNewOrder>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetNewOrder &&
            (identical(other.call, call) || other.call == call));
  }

  @override
  int get hashCode => Object.hash(runtimeType, call);

  @override
  String toString() {
    return 'OrdersEvent.getNewOrder(call: $call)';
  }
}

/// @nodoc
abstract mixin class $GetNewOrderCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory $GetNewOrderCopyWith(
          GetNewOrder value, $Res Function(GetNewOrder) _then) =
      _$GetNewOrderCopyWithImpl;
  @useResult
  $Res call({bool call});
}

/// @nodoc
class _$GetNewOrderCopyWithImpl<$Res> implements $GetNewOrderCopyWith<$Res> {
  _$GetNewOrderCopyWithImpl(this._self, this._then);

  final GetNewOrder _self;
  final $Res Function(GetNewOrder) _then;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? call = null,
  }) {
    return _then(GetNewOrder(
      call: null == call
          ? _self.call
          : call // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class GetPartnerOrders implements OrdersEvent {
  const GetPartnerOrders({required this.call});

  final bool call;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetPartnerOrdersCopyWith<GetPartnerOrders> get copyWith =>
      _$GetPartnerOrdersCopyWithImpl<GetPartnerOrders>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetPartnerOrders &&
            (identical(other.call, call) || other.call == call));
  }

  @override
  int get hashCode => Object.hash(runtimeType, call);

  @override
  String toString() {
    return 'OrdersEvent.getPartnerOrders(call: $call)';
  }
}

/// @nodoc
abstract mixin class $GetPartnerOrdersCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory $GetPartnerOrdersCopyWith(
          GetPartnerOrders value, $Res Function(GetPartnerOrders) _then) =
      _$GetPartnerOrdersCopyWithImpl;
  @useResult
  $Res call({bool call});
}

/// @nodoc
class _$GetPartnerOrdersCopyWithImpl<$Res>
    implements $GetPartnerOrdersCopyWith<$Res> {
  _$GetPartnerOrdersCopyWithImpl(this._self, this._then);

  final GetPartnerOrders _self;
  final $Res Function(GetPartnerOrders) _then;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? call = null,
  }) {
    return _then(GetPartnerOrders(
      call: null == call
          ? _self.call
          : call // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class RemovePickupPartner implements OrdersEvent {
  const RemovePickupPartner({required this.orderId});

  final String orderId;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemovePickupPartnerCopyWith<RemovePickupPartner> get copyWith =>
      _$RemovePickupPartnerCopyWithImpl<RemovePickupPartner>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemovePickupPartner &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @override
  String toString() {
    return 'OrdersEvent.removePickupPartner(orderId: $orderId)';
  }
}

/// @nodoc
abstract mixin class $RemovePickupPartnerCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory $RemovePickupPartnerCopyWith(
          RemovePickupPartner value, $Res Function(RemovePickupPartner) _then) =
      _$RemovePickupPartnerCopyWithImpl;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class _$RemovePickupPartnerCopyWithImpl<$Res>
    implements $RemovePickupPartnerCopyWith<$Res> {
  _$RemovePickupPartnerCopyWithImpl(this._self, this._then);

  final RemovePickupPartner _self;
  final $Res Function(RemovePickupPartner) _then;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
  }) {
    return _then(RemovePickupPartner(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class RefresPartnerOrders implements OrdersEvent {
  const RefresPartnerOrders();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RefresPartnerOrders);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrdersEvent.refresPartnerOrders()';
  }
}

/// @nodoc

class RefreshNewOrder implements OrdersEvent {
  const RefreshNewOrder();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RefreshNewOrder);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrdersEvent.refreshNewOrder()';
  }
}

/// @nodoc

class ChangeTab implements OrdersEvent {
  const ChangeTab({required this.tab});

  final int tab;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChangeTabCopyWith<ChangeTab> get copyWith =>
      _$ChangeTabCopyWithImpl<ChangeTab>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeTab &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tab);

  @override
  String toString() {
    return 'OrdersEvent.changeTab(tab: $tab)';
  }
}

/// @nodoc
abstract mixin class $ChangeTabCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory $ChangeTabCopyWith(ChangeTab value, $Res Function(ChangeTab) _then) =
      _$ChangeTabCopyWithImpl;
  @useResult
  $Res call({int tab});
}

/// @nodoc
class _$ChangeTabCopyWithImpl<$Res> implements $ChangeTabCopyWith<$Res> {
  _$ChangeTabCopyWithImpl(this._self, this._then);

  final ChangeTab _self;
  final $Res Function(ChangeTab) _then;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tab = null,
  }) {
    return _then(ChangeTab(
      tab: null == tab
          ? _self.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class ChangePickupPartner implements OrdersEvent {
  const ChangePickupPartner(
      {required this.pickUpPerson, required this.orderId});

  final PickUpPerson pickUpPerson;
  final String orderId;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChangePickupPartnerCopyWith<ChangePickupPartner> get copyWith =>
      _$ChangePickupPartnerCopyWithImpl<ChangePickupPartner>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangePickupPartner &&
            (identical(other.pickUpPerson, pickUpPerson) ||
                other.pickUpPerson == pickUpPerson) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pickUpPerson, orderId);

  @override
  String toString() {
    return 'OrdersEvent.changePickupPartner(pickUpPerson: $pickUpPerson, orderId: $orderId)';
  }
}

/// @nodoc
abstract mixin class $ChangePickupPartnerCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory $ChangePickupPartnerCopyWith(
          ChangePickupPartner value, $Res Function(ChangePickupPartner) _then) =
      _$ChangePickupPartnerCopyWithImpl;
  @useResult
  $Res call({PickUpPerson pickUpPerson, String orderId});
}

/// @nodoc
class _$ChangePickupPartnerCopyWithImpl<$Res>
    implements $ChangePickupPartnerCopyWith<$Res> {
  _$ChangePickupPartnerCopyWithImpl(this._self, this._then);

  final ChangePickupPartner _self;
  final $Res Function(ChangePickupPartner) _then;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pickUpPerson = null,
    Object? orderId = null,
  }) {
    return _then(ChangePickupPartner(
      pickUpPerson: null == pickUpPerson
          ? _self.pickUpPerson
          : pickUpPerson // ignore: cast_nullable_to_non_nullable
              as PickUpPerson,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class CheckErrorCompleteOrder implements OrdersEvent {
  const CheckErrorCompleteOrder();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CheckErrorCompleteOrder);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrdersEvent.checkErrorCompleteOrder()';
  }
}

/// @nodoc

class AddDiviceBill implements OrdersEvent {
  const AddDiviceBill();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddDiviceBill);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrdersEvent.addDiviceBill()';
  }
}

/// @nodoc

class RemoveDiviceBill implements OrdersEvent {
  const RemoveDiviceBill();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RemoveDiviceBill);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrdersEvent.removeDiviceBill()';
  }
}

/// @nodoc

class AddImeiImage implements OrdersEvent {
  const AddImeiImage();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddImeiImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrdersEvent.addImeiImage()';
  }
}

/// @nodoc

class RemoveImeiImage implements OrdersEvent {
  const RemoveImeiImage();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RemoveImeiImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrdersEvent.removeImeiImage()';
  }
}

/// @nodoc

class AddIdCardImage implements OrdersEvent {
  const AddIdCardImage();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddIdCardImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrdersEvent.addIdCardImage()';
  }
}

/// @nodoc

class RemoveIdCardImage implements OrdersEvent {
  const RemoveIdCardImage({required this.index});

  final int index;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoveIdCardImageCopyWith<RemoveIdCardImage> get copyWith =>
      _$RemoveIdCardImageCopyWithImpl<RemoveIdCardImage>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveIdCardImage &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @override
  String toString() {
    return 'OrdersEvent.removeIdCardImage(index: $index)';
  }
}

/// @nodoc
abstract mixin class $RemoveIdCardImageCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory $RemoveIdCardImageCopyWith(
          RemoveIdCardImage value, $Res Function(RemoveIdCardImage) _then) =
      _$RemoveIdCardImageCopyWithImpl;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$RemoveIdCardImageCopyWithImpl<$Res>
    implements $RemoveIdCardImageCopyWith<$Res> {
  _$RemoveIdCardImageCopyWithImpl(this._self, this._then);

  final RemoveIdCardImage _self;
  final $Res Function(RemoveIdCardImage) _then;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? index = null,
  }) {
    return _then(RemoveIdCardImage(
      index: null == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class AddDeviceImages implements OrdersEvent {
  const AddDeviceImages();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddDeviceImages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrdersEvent.addDeviceImages()';
  }
}

/// @nodoc

class RemoveDeviceImage implements OrdersEvent {
  const RemoveDeviceImage({required this.index});

  final int index;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoveDeviceImageCopyWith<RemoveDeviceImage> get copyWith =>
      _$RemoveDeviceImageCopyWithImpl<RemoveDeviceImage>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveDeviceImage &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @override
  String toString() {
    return 'OrdersEvent.removeDeviceImage(index: $index)';
  }
}

/// @nodoc
abstract mixin class $RemoveDeviceImageCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory $RemoveDeviceImageCopyWith(
          RemoveDeviceImage value, $Res Function(RemoveDeviceImage) _then) =
      _$RemoveDeviceImageCopyWithImpl;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$RemoveDeviceImageCopyWithImpl<$Res>
    implements $RemoveDeviceImageCopyWith<$Res> {
  _$RemoveDeviceImageCopyWithImpl(this._self, this._then);

  final RemoveDeviceImage _self;
  final $Res Function(RemoveDeviceImage) _then;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? index = null,
  }) {
    return _then(RemoveDeviceImage(
      index: null == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class AddSignatureImage implements OrdersEvent {
  const AddSignatureImage({required this.signature});

  final ImageModel signature;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddSignatureImageCopyWith<AddSignatureImage> get copyWith =>
      _$AddSignatureImageCopyWithImpl<AddSignatureImage>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddSignatureImage &&
            (identical(other.signature, signature) ||
                other.signature == signature));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signature);

  @override
  String toString() {
    return 'OrdersEvent.addSignatureImage(signature: $signature)';
  }
}

/// @nodoc
abstract mixin class $AddSignatureImageCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory $AddSignatureImageCopyWith(
          AddSignatureImage value, $Res Function(AddSignatureImage) _then) =
      _$AddSignatureImageCopyWithImpl;
  @useResult
  $Res call({ImageModel signature});
}

/// @nodoc
class _$AddSignatureImageCopyWithImpl<$Res>
    implements $AddSignatureImageCopyWith<$Res> {
  _$AddSignatureImageCopyWithImpl(this._self, this._then);

  final AddSignatureImage _self;
  final $Res Function(AddSignatureImage) _then;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? signature = null,
  }) {
    return _then(AddSignatureImage(
      signature: null == signature
          ? _self.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as ImageModel,
    ));
  }
}

/// @nodoc

class RemoveSignatureImage implements OrdersEvent {
  const RemoveSignatureImage();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RemoveSignatureImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrdersEvent.removeSignatureImage()';
  }
}

/// @nodoc

class DownloadOrderInvoice implements OrdersEvent {
  const DownloadOrderInvoice({required this.orderId});

  final String orderId;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DownloadOrderInvoiceCopyWith<DownloadOrderInvoice> get copyWith =>
      _$DownloadOrderInvoiceCopyWithImpl<DownloadOrderInvoice>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DownloadOrderInvoice &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @override
  String toString() {
    return 'OrdersEvent.downloadOrderInvoice(orderId: $orderId)';
  }
}

/// @nodoc
abstract mixin class $DownloadOrderInvoiceCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory $DownloadOrderInvoiceCopyWith(DownloadOrderInvoice value,
          $Res Function(DownloadOrderInvoice) _then) =
      _$DownloadOrderInvoiceCopyWithImpl;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class _$DownloadOrderInvoiceCopyWithImpl<$Res>
    implements $DownloadOrderInvoiceCopyWith<$Res> {
  _$DownloadOrderInvoiceCopyWithImpl(this._self, this._then);

  final DownloadOrderInvoice _self;
  final $Res Function(DownloadOrderInvoice) _then;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
  }) {
    return _then(DownloadOrderInvoice(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ChangeNotificationStatusOrder implements OrdersEvent {
  const ChangeNotificationStatusOrder({required this.orderId});

  final String orderId;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChangeNotificationStatusOrderCopyWith<ChangeNotificationStatusOrder>
      get copyWith => _$ChangeNotificationStatusOrderCopyWithImpl<
          ChangeNotificationStatusOrder>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeNotificationStatusOrder &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @override
  String toString() {
    return 'OrdersEvent.changeNotificationStatusOrder(orderId: $orderId)';
  }
}

/// @nodoc
abstract mixin class $ChangeNotificationStatusOrderCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory $ChangeNotificationStatusOrderCopyWith(
          ChangeNotificationStatusOrder value,
          $Res Function(ChangeNotificationStatusOrder) _then) =
      _$ChangeNotificationStatusOrderCopyWithImpl;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class _$ChangeNotificationStatusOrderCopyWithImpl<$Res>
    implements $ChangeNotificationStatusOrderCopyWith<$Res> {
  _$ChangeNotificationStatusOrderCopyWithImpl(this._self, this._then);

  final ChangeNotificationStatusOrder _self;
  final $Res Function(ChangeNotificationStatusOrder) _then;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
  }) {
    return _then(ChangeNotificationStatusOrder(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class Reset implements OrdersEvent {
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
    return 'OrdersEvent.reset()';
  }
}

/// @nodoc
mixin _$OrdersState {
  bool get isLoading;
  bool get hasError;
  bool get acceptOrderLoading;
  bool get acceptOrderError;
  bool get acceptOrder;
  bool get cancelOrder;
  bool get completeOrderLoading;
  bool get orderCompleted;
  bool get orderCompletionError;
  bool get newOrdesRefreshLoading;
  bool get partnerOrdesRefreshLoading;
  bool get orderDetailError;
  bool get popOrderScreen;
  bool get downloaded;
  bool get downloading;
  String? get orderInvoice;
  String? get message;
  ImageModel? get deviceBill;
  List<ImageModel>? get idCard;
  ImageModel? get imeiImage;
  List<ImageModel>? get deviceImages;
  ImageModel? get signatureImage;
  List<OrderDetail>? get partnerOrders;
  List<OrderDetail>? get newOrders;
  OrderDetail? get orderDetail;
  int get orderTab;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrdersStateCopyWith<OrdersState> get copyWith =>
      _$OrdersStateCopyWithImpl<OrdersState>(this as OrdersState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrdersState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.acceptOrderLoading, acceptOrderLoading) ||
                other.acceptOrderLoading == acceptOrderLoading) &&
            (identical(other.acceptOrderError, acceptOrderError) ||
                other.acceptOrderError == acceptOrderError) &&
            (identical(other.acceptOrder, acceptOrder) ||
                other.acceptOrder == acceptOrder) &&
            (identical(other.cancelOrder, cancelOrder) ||
                other.cancelOrder == cancelOrder) &&
            (identical(other.completeOrderLoading, completeOrderLoading) ||
                other.completeOrderLoading == completeOrderLoading) &&
            (identical(other.orderCompleted, orderCompleted) ||
                other.orderCompleted == orderCompleted) &&
            (identical(other.orderCompletionError, orderCompletionError) ||
                other.orderCompletionError == orderCompletionError) &&
            (identical(other.newOrdesRefreshLoading, newOrdesRefreshLoading) ||
                other.newOrdesRefreshLoading == newOrdesRefreshLoading) &&
            (identical(other.partnerOrdesRefreshLoading,
                    partnerOrdesRefreshLoading) ||
                other.partnerOrdesRefreshLoading ==
                    partnerOrdesRefreshLoading) &&
            (identical(other.orderDetailError, orderDetailError) ||
                other.orderDetailError == orderDetailError) &&
            (identical(other.popOrderScreen, popOrderScreen) ||
                other.popOrderScreen == popOrderScreen) &&
            (identical(other.downloaded, downloaded) ||
                other.downloaded == downloaded) &&
            (identical(other.downloading, downloading) ||
                other.downloading == downloading) &&
            (identical(other.orderInvoice, orderInvoice) ||
                other.orderInvoice == orderInvoice) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.deviceBill, deviceBill) ||
                other.deviceBill == deviceBill) &&
            const DeepCollectionEquality().equals(other.idCard, idCard) &&
            (identical(other.imeiImage, imeiImage) ||
                other.imeiImage == imeiImage) &&
            const DeepCollectionEquality()
                .equals(other.deviceImages, deviceImages) &&
            (identical(other.signatureImage, signatureImage) ||
                other.signatureImage == signatureImage) &&
            const DeepCollectionEquality()
                .equals(other.partnerOrders, partnerOrders) &&
            const DeepCollectionEquality().equals(other.newOrders, newOrders) &&
            (identical(other.orderDetail, orderDetail) ||
                other.orderDetail == orderDetail) &&
            (identical(other.orderTab, orderTab) ||
                other.orderTab == orderTab));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isLoading,
        hasError,
        acceptOrderLoading,
        acceptOrderError,
        acceptOrder,
        cancelOrder,
        completeOrderLoading,
        orderCompleted,
        orderCompletionError,
        newOrdesRefreshLoading,
        partnerOrdesRefreshLoading,
        orderDetailError,
        popOrderScreen,
        downloaded,
        downloading,
        orderInvoice,
        message,
        deviceBill,
        const DeepCollectionEquality().hash(idCard),
        imeiImage,
        const DeepCollectionEquality().hash(deviceImages),
        signatureImage,
        const DeepCollectionEquality().hash(partnerOrders),
        const DeepCollectionEquality().hash(newOrders),
        orderDetail,
        orderTab
      ]);

  @override
  String toString() {
    return 'OrdersState(isLoading: $isLoading, hasError: $hasError, acceptOrderLoading: $acceptOrderLoading, acceptOrderError: $acceptOrderError, acceptOrder: $acceptOrder, cancelOrder: $cancelOrder, completeOrderLoading: $completeOrderLoading, orderCompleted: $orderCompleted, orderCompletionError: $orderCompletionError, newOrdesRefreshLoading: $newOrdesRefreshLoading, partnerOrdesRefreshLoading: $partnerOrdesRefreshLoading, orderDetailError: $orderDetailError, popOrderScreen: $popOrderScreen, downloaded: $downloaded, downloading: $downloading, orderInvoice: $orderInvoice, message: $message, deviceBill: $deviceBill, idCard: $idCard, imeiImage: $imeiImage, deviceImages: $deviceImages, signatureImage: $signatureImage, partnerOrders: $partnerOrders, newOrders: $newOrders, orderDetail: $orderDetail, orderTab: $orderTab)';
  }
}

/// @nodoc
abstract mixin class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) _then) =
      _$OrdersStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool acceptOrderLoading,
      bool acceptOrderError,
      bool acceptOrder,
      bool cancelOrder,
      bool completeOrderLoading,
      bool orderCompleted,
      bool orderCompletionError,
      bool newOrdesRefreshLoading,
      bool partnerOrdesRefreshLoading,
      bool orderDetailError,
      bool popOrderScreen,
      bool downloaded,
      bool downloading,
      String? orderInvoice,
      String? message,
      ImageModel? deviceBill,
      List<ImageModel>? idCard,
      ImageModel? imeiImage,
      List<ImageModel>? deviceImages,
      ImageModel? signatureImage,
      List<OrderDetail>? partnerOrders,
      List<OrderDetail>? newOrders,
      OrderDetail? orderDetail,
      int orderTab});
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res> implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._self, this._then);

  final OrdersState _self;
  final $Res Function(OrdersState) _then;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? acceptOrderLoading = null,
    Object? acceptOrderError = null,
    Object? acceptOrder = null,
    Object? cancelOrder = null,
    Object? completeOrderLoading = null,
    Object? orderCompleted = null,
    Object? orderCompletionError = null,
    Object? newOrdesRefreshLoading = null,
    Object? partnerOrdesRefreshLoading = null,
    Object? orderDetailError = null,
    Object? popOrderScreen = null,
    Object? downloaded = null,
    Object? downloading = null,
    Object? orderInvoice = freezed,
    Object? message = freezed,
    Object? deviceBill = freezed,
    Object? idCard = freezed,
    Object? imeiImage = freezed,
    Object? deviceImages = freezed,
    Object? signatureImage = freezed,
    Object? partnerOrders = freezed,
    Object? newOrders = freezed,
    Object? orderDetail = freezed,
    Object? orderTab = null,
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
      acceptOrderLoading: null == acceptOrderLoading
          ? _self.acceptOrderLoading
          : acceptOrderLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      acceptOrderError: null == acceptOrderError
          ? _self.acceptOrderError
          : acceptOrderError // ignore: cast_nullable_to_non_nullable
              as bool,
      acceptOrder: null == acceptOrder
          ? _self.acceptOrder
          : acceptOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      cancelOrder: null == cancelOrder
          ? _self.cancelOrder
          : cancelOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      completeOrderLoading: null == completeOrderLoading
          ? _self.completeOrderLoading
          : completeOrderLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderCompleted: null == orderCompleted
          ? _self.orderCompleted
          : orderCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      orderCompletionError: null == orderCompletionError
          ? _self.orderCompletionError
          : orderCompletionError // ignore: cast_nullable_to_non_nullable
              as bool,
      newOrdesRefreshLoading: null == newOrdesRefreshLoading
          ? _self.newOrdesRefreshLoading
          : newOrdesRefreshLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      partnerOrdesRefreshLoading: null == partnerOrdesRefreshLoading
          ? _self.partnerOrdesRefreshLoading
          : partnerOrdesRefreshLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderDetailError: null == orderDetailError
          ? _self.orderDetailError
          : orderDetailError // ignore: cast_nullable_to_non_nullable
              as bool,
      popOrderScreen: null == popOrderScreen
          ? _self.popOrderScreen
          : popOrderScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      downloaded: null == downloaded
          ? _self.downloaded
          : downloaded // ignore: cast_nullable_to_non_nullable
              as bool,
      downloading: null == downloading
          ? _self.downloading
          : downloading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderInvoice: freezed == orderInvoice
          ? _self.orderInvoice
          : orderInvoice // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceBill: freezed == deviceBill
          ? _self.deviceBill
          : deviceBill // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      idCard: freezed == idCard
          ? _self.idCard
          : idCard // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
      imeiImage: freezed == imeiImage
          ? _self.imeiImage
          : imeiImage // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      deviceImages: freezed == deviceImages
          ? _self.deviceImages
          : deviceImages // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
      signatureImage: freezed == signatureImage
          ? _self.signatureImage
          : signatureImage // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      partnerOrders: freezed == partnerOrders
          ? _self.partnerOrders
          : partnerOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderDetail>?,
      newOrders: freezed == newOrders
          ? _self.newOrders
          : newOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderDetail>?,
      orderDetail: freezed == orderDetail
          ? _self.orderDetail
          : orderDetail // ignore: cast_nullable_to_non_nullable
              as OrderDetail?,
      orderTab: null == orderTab
          ? _self.orderTab
          : orderTab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [OrdersState].
extension OrdersStatePatterns on OrdersState {
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
            bool acceptOrderLoading,
            bool acceptOrderError,
            bool acceptOrder,
            bool cancelOrder,
            bool completeOrderLoading,
            bool orderCompleted,
            bool orderCompletionError,
            bool newOrdesRefreshLoading,
            bool partnerOrdesRefreshLoading,
            bool orderDetailError,
            bool popOrderScreen,
            bool downloaded,
            bool downloading,
            String? orderInvoice,
            String? message,
            ImageModel? deviceBill,
            List<ImageModel>? idCard,
            ImageModel? imeiImage,
            List<ImageModel>? deviceImages,
            ImageModel? signatureImage,
            List<OrderDetail>? partnerOrders,
            List<OrderDetail>? newOrders,
            OrderDetail? orderDetail,
            int orderTab)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when $default != null:
        return $default(
            _that.isLoading,
            _that.hasError,
            _that.acceptOrderLoading,
            _that.acceptOrderError,
            _that.acceptOrder,
            _that.cancelOrder,
            _that.completeOrderLoading,
            _that.orderCompleted,
            _that.orderCompletionError,
            _that.newOrdesRefreshLoading,
            _that.partnerOrdesRefreshLoading,
            _that.orderDetailError,
            _that.popOrderScreen,
            _that.downloaded,
            _that.downloading,
            _that.orderInvoice,
            _that.message,
            _that.deviceBill,
            _that.idCard,
            _that.imeiImage,
            _that.deviceImages,
            _that.signatureImage,
            _that.partnerOrders,
            _that.newOrders,
            _that.orderDetail,
            _that.orderTab);
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
            bool acceptOrderLoading,
            bool acceptOrderError,
            bool acceptOrder,
            bool cancelOrder,
            bool completeOrderLoading,
            bool orderCompleted,
            bool orderCompletionError,
            bool newOrdesRefreshLoading,
            bool partnerOrdesRefreshLoading,
            bool orderDetailError,
            bool popOrderScreen,
            bool downloaded,
            bool downloading,
            String? orderInvoice,
            String? message,
            ImageModel? deviceBill,
            List<ImageModel>? idCard,
            ImageModel? imeiImage,
            List<ImageModel>? deviceImages,
            ImageModel? signatureImage,
            List<OrderDetail>? partnerOrders,
            List<OrderDetail>? newOrders,
            OrderDetail? orderDetail,
            int orderTab)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return $default(
            _that.isLoading,
            _that.hasError,
            _that.acceptOrderLoading,
            _that.acceptOrderError,
            _that.acceptOrder,
            _that.cancelOrder,
            _that.completeOrderLoading,
            _that.orderCompleted,
            _that.orderCompletionError,
            _that.newOrdesRefreshLoading,
            _that.partnerOrdesRefreshLoading,
            _that.orderDetailError,
            _that.popOrderScreen,
            _that.downloaded,
            _that.downloading,
            _that.orderInvoice,
            _that.message,
            _that.deviceBill,
            _that.idCard,
            _that.imeiImage,
            _that.deviceImages,
            _that.signatureImage,
            _that.partnerOrders,
            _that.newOrders,
            _that.orderDetail,
            _that.orderTab);
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
            bool acceptOrderLoading,
            bool acceptOrderError,
            bool acceptOrder,
            bool cancelOrder,
            bool completeOrderLoading,
            bool orderCompleted,
            bool orderCompletionError,
            bool newOrdesRefreshLoading,
            bool partnerOrdesRefreshLoading,
            bool orderDetailError,
            bool popOrderScreen,
            bool downloaded,
            bool downloading,
            String? orderInvoice,
            String? message,
            ImageModel? deviceBill,
            List<ImageModel>? idCard,
            ImageModel? imeiImage,
            List<ImageModel>? deviceImages,
            ImageModel? signatureImage,
            List<OrderDetail>? partnerOrders,
            List<OrderDetail>? newOrders,
            OrderDetail? orderDetail,
            int orderTab)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Initial() when $default != null:
        return $default(
            _that.isLoading,
            _that.hasError,
            _that.acceptOrderLoading,
            _that.acceptOrderError,
            _that.acceptOrder,
            _that.cancelOrder,
            _that.completeOrderLoading,
            _that.orderCompleted,
            _that.orderCompletionError,
            _that.newOrdesRefreshLoading,
            _that.partnerOrdesRefreshLoading,
            _that.orderDetailError,
            _that.popOrderScreen,
            _that.downloaded,
            _that.downloading,
            _that.orderInvoice,
            _that.message,
            _that.deviceBill,
            _that.idCard,
            _that.imeiImage,
            _that.deviceImages,
            _that.signatureImage,
            _that.partnerOrders,
            _that.newOrders,
            _that.orderDetail,
            _that.orderTab);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements OrdersState {
  const _Initial(
      {required this.isLoading,
      required this.hasError,
      required this.acceptOrderLoading,
      required this.acceptOrderError,
      required this.acceptOrder,
      required this.cancelOrder,
      required this.completeOrderLoading,
      required this.orderCompleted,
      required this.orderCompletionError,
      required this.newOrdesRefreshLoading,
      required this.partnerOrdesRefreshLoading,
      required this.orderDetailError,
      required this.popOrderScreen,
      required this.downloaded,
      required this.downloading,
      this.orderInvoice,
      this.message,
      this.deviceBill,
      final List<ImageModel>? idCard,
      this.imeiImage,
      final List<ImageModel>? deviceImages,
      this.signatureImage,
      final List<OrderDetail>? partnerOrders,
      final List<OrderDetail>? newOrders,
      this.orderDetail,
      required this.orderTab})
      : _idCard = idCard,
        _deviceImages = deviceImages,
        _partnerOrders = partnerOrders,
        _newOrders = newOrders;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool acceptOrderLoading;
  @override
  final bool acceptOrderError;
  @override
  final bool acceptOrder;
  @override
  final bool cancelOrder;
  @override
  final bool completeOrderLoading;
  @override
  final bool orderCompleted;
  @override
  final bool orderCompletionError;
  @override
  final bool newOrdesRefreshLoading;
  @override
  final bool partnerOrdesRefreshLoading;
  @override
  final bool orderDetailError;
  @override
  final bool popOrderScreen;
  @override
  final bool downloaded;
  @override
  final bool downloading;
  @override
  final String? orderInvoice;
  @override
  final String? message;
  @override
  final ImageModel? deviceBill;
  final List<ImageModel>? _idCard;
  @override
  List<ImageModel>? get idCard {
    final value = _idCard;
    if (value == null) return null;
    if (_idCard is EqualUnmodifiableListView) return _idCard;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ImageModel? imeiImage;
  final List<ImageModel>? _deviceImages;
  @override
  List<ImageModel>? get deviceImages {
    final value = _deviceImages;
    if (value == null) return null;
    if (_deviceImages is EqualUnmodifiableListView) return _deviceImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ImageModel? signatureImage;
  final List<OrderDetail>? _partnerOrders;
  @override
  List<OrderDetail>? get partnerOrders {
    final value = _partnerOrders;
    if (value == null) return null;
    if (_partnerOrders is EqualUnmodifiableListView) return _partnerOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OrderDetail>? _newOrders;
  @override
  List<OrderDetail>? get newOrders {
    final value = _newOrders;
    if (value == null) return null;
    if (_newOrders is EqualUnmodifiableListView) return _newOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final OrderDetail? orderDetail;
  @override
  final int orderTab;

  /// Create a copy of OrdersState
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
            (identical(other.acceptOrderLoading, acceptOrderLoading) ||
                other.acceptOrderLoading == acceptOrderLoading) &&
            (identical(other.acceptOrderError, acceptOrderError) ||
                other.acceptOrderError == acceptOrderError) &&
            (identical(other.acceptOrder, acceptOrder) ||
                other.acceptOrder == acceptOrder) &&
            (identical(other.cancelOrder, cancelOrder) ||
                other.cancelOrder == cancelOrder) &&
            (identical(other.completeOrderLoading, completeOrderLoading) ||
                other.completeOrderLoading == completeOrderLoading) &&
            (identical(other.orderCompleted, orderCompleted) ||
                other.orderCompleted == orderCompleted) &&
            (identical(other.orderCompletionError, orderCompletionError) ||
                other.orderCompletionError == orderCompletionError) &&
            (identical(other.newOrdesRefreshLoading, newOrdesRefreshLoading) ||
                other.newOrdesRefreshLoading == newOrdesRefreshLoading) &&
            (identical(other.partnerOrdesRefreshLoading,
                    partnerOrdesRefreshLoading) ||
                other.partnerOrdesRefreshLoading ==
                    partnerOrdesRefreshLoading) &&
            (identical(other.orderDetailError, orderDetailError) ||
                other.orderDetailError == orderDetailError) &&
            (identical(other.popOrderScreen, popOrderScreen) ||
                other.popOrderScreen == popOrderScreen) &&
            (identical(other.downloaded, downloaded) ||
                other.downloaded == downloaded) &&
            (identical(other.downloading, downloading) ||
                other.downloading == downloading) &&
            (identical(other.orderInvoice, orderInvoice) ||
                other.orderInvoice == orderInvoice) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.deviceBill, deviceBill) ||
                other.deviceBill == deviceBill) &&
            const DeepCollectionEquality().equals(other._idCard, _idCard) &&
            (identical(other.imeiImage, imeiImage) ||
                other.imeiImage == imeiImage) &&
            const DeepCollectionEquality()
                .equals(other._deviceImages, _deviceImages) &&
            (identical(other.signatureImage, signatureImage) ||
                other.signatureImage == signatureImage) &&
            const DeepCollectionEquality()
                .equals(other._partnerOrders, _partnerOrders) &&
            const DeepCollectionEquality()
                .equals(other._newOrders, _newOrders) &&
            (identical(other.orderDetail, orderDetail) ||
                other.orderDetail == orderDetail) &&
            (identical(other.orderTab, orderTab) ||
                other.orderTab == orderTab));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isLoading,
        hasError,
        acceptOrderLoading,
        acceptOrderError,
        acceptOrder,
        cancelOrder,
        completeOrderLoading,
        orderCompleted,
        orderCompletionError,
        newOrdesRefreshLoading,
        partnerOrdesRefreshLoading,
        orderDetailError,
        popOrderScreen,
        downloaded,
        downloading,
        orderInvoice,
        message,
        deviceBill,
        const DeepCollectionEquality().hash(_idCard),
        imeiImage,
        const DeepCollectionEquality().hash(_deviceImages),
        signatureImage,
        const DeepCollectionEquality().hash(_partnerOrders),
        const DeepCollectionEquality().hash(_newOrders),
        orderDetail,
        orderTab
      ]);

  @override
  String toString() {
    return 'OrdersState(isLoading: $isLoading, hasError: $hasError, acceptOrderLoading: $acceptOrderLoading, acceptOrderError: $acceptOrderError, acceptOrder: $acceptOrder, cancelOrder: $cancelOrder, completeOrderLoading: $completeOrderLoading, orderCompleted: $orderCompleted, orderCompletionError: $orderCompletionError, newOrdesRefreshLoading: $newOrdesRefreshLoading, partnerOrdesRefreshLoading: $partnerOrdesRefreshLoading, orderDetailError: $orderDetailError, popOrderScreen: $popOrderScreen, downloaded: $downloaded, downloading: $downloading, orderInvoice: $orderInvoice, message: $message, deviceBill: $deviceBill, idCard: $idCard, imeiImage: $imeiImage, deviceImages: $deviceImages, signatureImage: $signatureImage, partnerOrders: $partnerOrders, newOrders: $newOrders, orderDetail: $orderDetail, orderTab: $orderTab)';
  }
}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) =
      __$InitialCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool acceptOrderLoading,
      bool acceptOrderError,
      bool acceptOrder,
      bool cancelOrder,
      bool completeOrderLoading,
      bool orderCompleted,
      bool orderCompletionError,
      bool newOrdesRefreshLoading,
      bool partnerOrdesRefreshLoading,
      bool orderDetailError,
      bool popOrderScreen,
      bool downloaded,
      bool downloading,
      String? orderInvoice,
      String? message,
      ImageModel? deviceBill,
      List<ImageModel>? idCard,
      ImageModel? imeiImage,
      List<ImageModel>? deviceImages,
      ImageModel? signatureImage,
      List<OrderDetail>? partnerOrders,
      List<OrderDetail>? newOrders,
      OrderDetail? orderDetail,
      int orderTab});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? acceptOrderLoading = null,
    Object? acceptOrderError = null,
    Object? acceptOrder = null,
    Object? cancelOrder = null,
    Object? completeOrderLoading = null,
    Object? orderCompleted = null,
    Object? orderCompletionError = null,
    Object? newOrdesRefreshLoading = null,
    Object? partnerOrdesRefreshLoading = null,
    Object? orderDetailError = null,
    Object? popOrderScreen = null,
    Object? downloaded = null,
    Object? downloading = null,
    Object? orderInvoice = freezed,
    Object? message = freezed,
    Object? deviceBill = freezed,
    Object? idCard = freezed,
    Object? imeiImage = freezed,
    Object? deviceImages = freezed,
    Object? signatureImage = freezed,
    Object? partnerOrders = freezed,
    Object? newOrders = freezed,
    Object? orderDetail = freezed,
    Object? orderTab = null,
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
      acceptOrderLoading: null == acceptOrderLoading
          ? _self.acceptOrderLoading
          : acceptOrderLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      acceptOrderError: null == acceptOrderError
          ? _self.acceptOrderError
          : acceptOrderError // ignore: cast_nullable_to_non_nullable
              as bool,
      acceptOrder: null == acceptOrder
          ? _self.acceptOrder
          : acceptOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      cancelOrder: null == cancelOrder
          ? _self.cancelOrder
          : cancelOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      completeOrderLoading: null == completeOrderLoading
          ? _self.completeOrderLoading
          : completeOrderLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderCompleted: null == orderCompleted
          ? _self.orderCompleted
          : orderCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      orderCompletionError: null == orderCompletionError
          ? _self.orderCompletionError
          : orderCompletionError // ignore: cast_nullable_to_non_nullable
              as bool,
      newOrdesRefreshLoading: null == newOrdesRefreshLoading
          ? _self.newOrdesRefreshLoading
          : newOrdesRefreshLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      partnerOrdesRefreshLoading: null == partnerOrdesRefreshLoading
          ? _self.partnerOrdesRefreshLoading
          : partnerOrdesRefreshLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderDetailError: null == orderDetailError
          ? _self.orderDetailError
          : orderDetailError // ignore: cast_nullable_to_non_nullable
              as bool,
      popOrderScreen: null == popOrderScreen
          ? _self.popOrderScreen
          : popOrderScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      downloaded: null == downloaded
          ? _self.downloaded
          : downloaded // ignore: cast_nullable_to_non_nullable
              as bool,
      downloading: null == downloading
          ? _self.downloading
          : downloading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderInvoice: freezed == orderInvoice
          ? _self.orderInvoice
          : orderInvoice // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceBill: freezed == deviceBill
          ? _self.deviceBill
          : deviceBill // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      idCard: freezed == idCard
          ? _self._idCard
          : idCard // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
      imeiImage: freezed == imeiImage
          ? _self.imeiImage
          : imeiImage // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      deviceImages: freezed == deviceImages
          ? _self._deviceImages
          : deviceImages // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
      signatureImage: freezed == signatureImage
          ? _self.signatureImage
          : signatureImage // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      partnerOrders: freezed == partnerOrders
          ? _self._partnerOrders
          : partnerOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderDetail>?,
      newOrders: freezed == newOrders
          ? _self._newOrders
          : newOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderDetail>?,
      orderDetail: freezed == orderDetail
          ? _self.orderDetail
          : orderDetail // ignore: cast_nullable_to_non_nullable
              as OrderDetail?,
      orderTab: null == orderTab
          ? _self.orderTab
          : orderTab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
