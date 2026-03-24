part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.acceptOrder({required String orderId}) =
      AcceptOrder;
  const factory OrdersEvent.getOrderDetail({required String orderId}) =
      GetOrderDetail;
  const factory OrdersEvent.getOrderDetailNotification(
      {required String orderId}) = GetOrderDetailNotification;
  const factory OrdersEvent.cancelOrder(
      {required String orderId, required String reason}) = CancelOrder;
  const factory OrdersEvent.completeOrder(
      {required String orderId,
      required CompleteOrderModel completeOrderModel}) = CompleteOrder;
  const factory OrdersEvent.getNewOrder({required bool call}) = GetNewOrder;
  const factory OrdersEvent.getPartnerOrders({required bool call}) =
      GetPartnerOrders;
  const factory OrdersEvent.removePickupPartner({required String orderId}) =
      RemovePickupPartner;
  const factory OrdersEvent.refresPartnerOrders() = RefresPartnerOrders;
  const factory OrdersEvent.refreshNewOrder() = RefreshNewOrder;
  const factory OrdersEvent.changeTab({required int tab}) = ChangeTab;
  const factory OrdersEvent.changePickupPartner(
      {required PickUpPerson pickUpPerson,
      required String orderId}) = ChangePickupPartner;
  const factory OrdersEvent.checkErrorCompleteOrder() = CheckErrorCompleteOrder;
  const factory OrdersEvent.addDiviceBill() = AddDiviceBill;
  const factory OrdersEvent.removeDiviceBill() = RemoveDiviceBill;
  const factory OrdersEvent.addImeiImage() = AddImeiImage;
  const factory OrdersEvent.removeImeiImage() = RemoveImeiImage;
  const factory OrdersEvent.addIdCardImage() = AddIdCardImage;
  const factory OrdersEvent.removeIdCardImage({required int index}) =
      RemoveIdCardImage;
  const factory OrdersEvent.addDeviceImages() = AddDeviceImages;
  const factory OrdersEvent.removeDeviceImage({required int index}) =
      RemoveDeviceImage;
  const factory OrdersEvent.addSignatureImage({required ImageModel signature}) =
      AddSignatureImage;
  const factory OrdersEvent.removeSignatureImage() = RemoveSignatureImage;
  const factory OrdersEvent.downloadOrderInvoice({required String orderId}) =
      DownloadOrderInvoice;
  const factory OrdersEvent.changeNotificationStatusOrder(
      {required String orderId}) = ChangeNotificationStatusOrder;
  const factory OrdersEvent.reset() = Reset;
}
