import 'package:bechdu_partner/application/business_logic/notification/notification_bloc.dart';
import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/home/widgets/home_orders_tile.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/refresh_indicator/refresh_indicator.dart';
import 'package:bechdu_partner/application/presentation/utils/shimmer/shimmer_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewOrdersList extends StatefulWidget {
  const NewOrdersList({
    super.key,
  });

  @override
  State<NewOrdersList> createState() => _NewOrdersListState();
}

class _NewOrdersListState extends State<NewOrdersList> {
  final ScrollController controller = ScrollController();
  @override
  void initState() {
    controller.addListener(() {
      if (controller.position.pixels == controller.position.maxScrollExtent) {
        context.read<OrdersBloc>().add(const OrdersEvent.refreshNewOrder());
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
    return BlocBuilder<OrdersBloc, OrdersState>(builder: (context, state) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context
            .read<OrdersBloc>()
            .add(const OrdersEvent.getNewOrder(call: false));
      });
      if (state.isLoading) {
        return const Center(
            child: CircularProgressIndicator(color: kBluePrimary));
      } else if (state.newOrders != null) {
        if (state.newOrders!.isNotEmpty) {
          int len = state.newOrdesRefreshLoading
              ? state.newOrders!.length + 1
              : state.newOrders!.length;
          return RefreshIndicator(
            onRefresh: () async {
              if (partner) {
                context
                    .read<OrdersBloc>()
                    .add(const OrdersEvent.getNewOrder(call: true));
                context
                    .read<PickupPartnerBloc>()
                    .add(const PickupPartnerEvent.getPartnerProfile());
              }
              context
                  .read<OrdersBloc>()
                  .add(const OrdersEvent.getPartnerOrders(call: true));
              context
                  .read<NotificationBloc>()
                  .add(const NotificationEvent.getNotifications(reset: false));
            },
            child: ListView.builder(
              controller: controller,
              padding: EdgeInsets.zero,
              itemCount: len < 5 ? len + 1 : len,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                if (len < 5 && !state.newOrdesRefreshLoading) {
                  if (index < len) {
                    return OrdersListTileHome(
                        orderDetail: state.newOrders![index],
                        showExpansion: true);
                  } else {
                    return SizedBox(height: 500, width: sWidth);
                  }
                }
                return state.newOrders!.length <= index
                    ? Padding(
                        padding: EdgeInsets.only(
                            bottom: index == len ? 100 : 0,
                            left: 20,
                            right: 20),
                        child: ShimmerLoader(
                            itemCount: 1, height: 150, width: sWidth),
                      )
                    : Padding(
                        padding: EdgeInsets.only(
                            bottom: state.newOrders!.length - 1 == index &&
                                    !state.newOrdesRefreshLoading
                                ? 100
                                : 0),
                        child: OrdersListTileHome(
                            orderDetail: state.newOrders![index],
                            showExpansion: true),
                      );
              },
            ),
          );
        } else {
          // return const Center(child: Text('You have no new orders'));
          return ErrorRefreshIndicator(
              onRefresh: () {
                if (partner) {
                  context
                      .read<OrdersBloc>()
                      .add(const OrdersEvent.getNewOrder(call: true));
                  context
                      .read<PickupPartnerBloc>()
                      .add(const PickupPartnerEvent.getPartnerProfile());
                }
                context
                    .read<OrdersBloc>()
                    .add(const OrdersEvent.getPartnerOrders(call: true));
              },
              errorMessage: 'You have no new orders');
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
