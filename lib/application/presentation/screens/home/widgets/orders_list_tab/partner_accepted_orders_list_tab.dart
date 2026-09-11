import 'package:bechdu_partner/application/business_logic/notification/notification_bloc.dart';
import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/screens/home/widgets/home_orders_tile.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/refresh_indicator/refresh_indicator.dart';
import 'package:bechdu_partner/application/presentation/utils/shimmer/shimmer_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrdersHistoryList extends StatefulWidget {
  const OrdersHistoryList({
    super.key,
  });

  @override
  State<OrdersHistoryList> createState() => _OrdersHistoryListState();
}

class _OrdersHistoryListState extends State<OrdersHistoryList> {
  final ScrollController controller = ScrollController();
  @override
  void initState() {
    controller.addListener(() {
      if (controller.position.pixels == controller.position.maxScrollExtent) {
        context.read<OrdersBloc>().add(const OrdersEvent.refresPartnerOrders());
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<OrdersBloc>()
          .add(const OrdersEvent.getPartnerOrders(call: false));
    });
    return BlocConsumer<OrdersBloc, OrdersState>(listener: (context, state) {
      if (state.popOrderScreen && state.orderDetail == null) {
        Navigator.pushNamedAndRemoveUntil(context,
            partner ? Routes.bottomBar : Routes.homePage, (route) => false);
      }
    }, builder: (context, state) {
      if (state.isLoading) {
        return const Center(
            child: CircularProgressIndicator(color: kBluePrimary));
      }
      if (state.partnerOrders != null) {
        final filteredOrders = state.orderFilter == null
            ? state.partnerOrders!
            : state.partnerOrders!
                .where((order) =>
                    order.status?.toLowerCase() ==
                    state.orderFilter?.toLowerCase())
                .toList();

        if (filteredOrders.isNotEmpty) {
          int len = state.partnerOrdesRefreshLoading
              ? filteredOrders.length + 1
              : filteredOrders.length;
          return RefreshIndicator(
            onRefresh: () async {
              if (partner) {
                context
                    .read<OrdersBloc>()
                    .add(const OrdersEvent.getNewOrder(call: true));
                context
                    .read<PickupPartnerBloc>()
                    .add(const PickupPartnerEvent.getPartnerProfile());
                context.read<NotificationBloc>().add(
                    const NotificationEvent.getNotifications(reset: false));
              }
              context
                  .read<OrdersBloc>()
                  .add(const OrdersEvent.getPartnerOrders(call: true));
            },
            child: ListView.builder(
              controller: controller,
              itemCount: len < 5 ? len + 1 : len,
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                if (len < 5 && !state.partnerOrdesRefreshLoading) {
                  if (index < len) {
                    return OrdersListTileHome(
                        orderDetail: filteredOrders[index],
                        showExpansion: true);
                  } else {
                    return SizedBox(height: 1000, width: sWidth);
                  }
                }
                if (filteredOrders.length <= index) {
                  return Padding(
                    padding: EdgeInsets.only(
                        bottom: index == len ? 100 : 0, left: 20, right: 20),
                    child:
                        ShimmerLoader(itemCount: 1, height: 150, width: sWidth),
                  );
                }
                return Padding(
                  padding: EdgeInsets.only(
                      bottom: filteredOrders.length - 1 == index &&
                              !state.partnerOrdesRefreshLoading
                          ? 100
                          : 0),
                  child: OrdersListTileHome(
                      orderDetail: filteredOrders[index],
                      showExpansion:
                          filteredOrders[index].status == 'cancelled'),
                );
              },
            ),
          );
        } else {
          return ErrorRefreshIndicator(
            onRefresh: () {
              if (partner) {
                context
                    .read<OrdersBloc>()
                    .add(const OrdersEvent.getNewOrder(call: true));
              }
              context
                  .read<OrdersBloc>()
                  .add(const OrdersEvent.getPartnerOrders(call: true));
            },
            errorMessage: state.orderFilter != null
                ? 'No ${state.orderFilter} orders found'
                : 'Your order list is empty',
          );
        }
      } else {
        return Center(
            child: InkWell(
          onTap: () {
            if (partner) {
              context
                  .read<OrdersBloc>()
                  .add(const OrdersEvent.getNewOrder(call: true));
            }
            context
                .read<OrdersBloc>()
                .add(const OrdersEvent.getPartnerOrders(call: true));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    if (partner) {
                      context
                          .read<OrdersBloc>()
                          .add(const OrdersEvent.getNewOrder(call: true));
                    }
                    context
                        .read<OrdersBloc>()
                        .add(const OrdersEvent.getPartnerOrders(call: true));
                  },
                  icon: const Icon(Icons.refresh_sharp)),
              const Text('Something went worng, tap to refresh'),
              const SizedBox(width: double.infinity)
            ],
          ),
        ));
      }
    });
  }
}
