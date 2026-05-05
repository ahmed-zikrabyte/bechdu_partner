part of 'orders_bloc.dart';

@freezed
abstract class OrdersState with _$OrdersState {
  const factory OrdersState(
      {required bool isLoading,
      required bool hasError,
      required bool acceptOrderLoading,
      required bool acceptOrderError,
      required bool acceptOrder,
      required bool cancelOrder,
      required bool completeOrderLoading,
      required bool orderCompleted,
      required bool orderCompletionError,
      required bool newOrdesRefreshLoading,
      required bool partnerOrdesRefreshLoading,
      required bool orderDetailError,
      required bool popOrderScreen,
      required bool downloaded,
      required bool downloading,
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
      String? orderFilter,
      required int orderTab}) = _Initial;

  factory OrdersState.initial() => const OrdersState(
      isLoading: false,
      orderCompletionError: false,
      newOrdesRefreshLoading: false,
      partnerOrdesRefreshLoading: false,
      hasError: false,
      orderDetailError: false,
      orderTab: 0,
      popOrderScreen: false,
      acceptOrder: false,
      cancelOrder: false,
      acceptOrderError: false,
      completeOrderLoading: false,
      orderCompleted: false,
      acceptOrderLoading: false,
      downloaded: false,
      downloading: false);
}
