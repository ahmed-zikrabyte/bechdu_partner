import 'package:bechdu_partner/application/business_logic/notification/notification_bloc.dart';
import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/refresh_indicator/refresh_indicator.dart';
import 'package:bechdu_partner/application/presentation/utils/shimmer/shimmer_loader.dart';
import 'package:bechdu_partner/application/presentation/utils/time/time_maker.dart';
import 'package:bechdu_partner/application/presentation/widgets/custom_expansion_tile.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/order_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenNotification extends StatefulWidget {
  const ScreenNotification({super.key});

  @override
  State<ScreenNotification> createState() => _ScreenNotificationState();
}

class _ScreenNotificationState extends State<ScreenNotification> {
  final ScrollController controller = ScrollController();

  @override
  void initState() {
    // Fetch notifications (Notification tab)
    context
        .read<NotificationBloc>()
        .add(const NotificationEvent.getNotifications(reset: true));
    // Fetch offers from dedicated endpoint (Offers tab)
    context.read<NotificationBloc>().add(const NotificationEvent.getOffers());
    if (partner) {
      context.read<OrdersBloc>().add(const OrdersEvent.getNewOrder(call: true));
    }
    controller.addListener(() {
      if (controller.position.pixels == controller.position.maxScrollExtent) {
        context
            .read<NotificationBloc>()
            .add(const NotificationEvent.getNotificationsNext());
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Alerts', style: textHeadBoldBig2),
          bottom: TabBar(
            labelStyle: textHeadBold1,
            unselectedLabelStyle: textHeadRegular1,
            indicatorColor: kBluePrimary,
            labelColor: kBluePrimary,
            unselectedLabelColor: kGreyDark,
            tabs: const [
              Tab(text: 'Notification'),
              Tab(text: 'Offers'),
            ],
          ),
        ),
        body: BlocBuilder<OrdersBloc, OrdersState>(
          builder: (context, ordreState) {
            return BlocBuilder<NotificationBloc, NotificationState>(
              builder: (context, state) {
                return TabBarView(
                  children: [
                    // --- Notification Tab ---
                    _buildNotificationsTab(state),
                    // --- Offers Tab ---
                    _buildOffersTab(state),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }

  // ───────────────────────────── Notification Tab ─────────────────────────────

  Widget _buildNotificationsTab(NotificationState state) {
    if (state.isLoading) {
      return const Center(
          child: CircularProgressIndicator(color: kBluePrimary));
    }

    final list = state.notificationList ?? [];

    if (list.isEmpty) {
      return Column(
        children: [
          const CustomExpansionTile(
              title: SortingTabs(title: true),
              subTitle: kEmpty,
              children: [SortingTabs(title: false)]),
          Expanded(
            child: ErrorRefreshIndicator(
                image: gifNoData,
                errorMessage: 'No Notifications',
                onRefresh: () {
                  context.read<NotificationBloc>().add(
                      const NotificationEvent.getNotifications(reset: true));
                  if (partner) {
                    context
                        .read<OrdersBloc>()
                        .add(const OrdersEvent.getNewOrder(call: true));
                  }
                }),
          ),
        ],
      );
    }

    final length = state.pageLoading ? list.length + 1 : list.length;

    return Column(
      children: [
        const CustomExpansionTile(
            expandMore: Icons.sort,
            title: SortingTabs(title: true),
            subTitle: kEmpty,
            children: [SortingTabs(title: false)]),
        kHeight5,
        Expanded(
          child: RefreshIndicator(
            onRefresh: () async {
              context
                  .read<NotificationBloc>()
                  .add(const NotificationEvent.getNotifications(reset: true));
              if (partner) {
                context
                    .read<OrdersBloc>()
                    .add(const OrdersEvent.getNewOrder(call: true));
              }
              await Future.delayed(const Duration(seconds: 2));
            },
            child: ListView.separated(
              controller: controller,
              itemCount: length,
              separatorBuilder: (context, index) =>
                  const Divider(thickness: 1, height: 1),
              itemBuilder: (context, index) {
                if (index == list.length) {
                  return ShimmerLoader(
                      itemCount: 1, height: 100, width: sWidth);
                }
                final data = list[index];
                final color = getStatusColor(data.type ?? '');
                return _buildNotificationTile(data, color, isOffer: false);
              },
            ),
          ),
        ),
      ],
    );
  }

  // ───────────────────────────── Offers Tab ─────────────────────────────

  Widget _buildOffersTab(NotificationState state) {
    if (state.offersLoading) {
      return const Center(
          child: CircularProgressIndicator(color: kOrangePrimary));
    }

    final offers = state.offersList ?? [];

    if (offers.isEmpty) {
      return ErrorRefreshIndicator(
          image: gifNoData,
          errorMessage: 'No Offers Available',
          onRefresh: () {
            context
                .read<NotificationBloc>()
                .add(const NotificationEvent.getOffers());
          });
    }

    return RefreshIndicator(
      onRefresh: () async {
        context
            .read<NotificationBloc>()
            .add(const NotificationEvent.getOffers());
        await Future.delayed(const Duration(seconds: 2));
      },
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: offers.length,
        separatorBuilder: (context, index) =>
            const Divider(thickness: 1, height: 1),
        itemBuilder: (context, index) {
          final data = offers[index];
          final color = getStatusColor(data.type ?? '');
          return _buildNotificationTile(data, color, isOffer: true);
        },
      ),
    );
  }

  // ───────────────────────────── Shared Tile ─────────────────────────────

  Widget _buildNotificationTile(data, Color color, {required bool isOffer}) {
    return Container(
      color: data.status == false ? kBluelight.withOpacity(0.5) : kWhite,
      child: ListTile(
        minLeadingWidth: 40,
        isThreeLine: true,
        onTap: () {
          if (data.status == false) {
            context
                .read<NotificationBloc>()
                .add(NotificationEvent.markAsRead(id: data.id!));
          }
          if (isOffer) return; // Offers don't navigate to order screen
          if (partner) {
            Navigator.pushNamed(context, Routes.orderScreen,
                arguments: OrderDetail(
                    id: data.orderId, notification: true, status: data.type));
          } else {
            Navigator.pushNamed(context, Routes.orderScreen,
                arguments: OrderDetail(id: data.orderId));
          }
        },
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            data.status ?? false
                ? kEmpty
                : Icon(Icons.circle, size: 12, color: color),
            kWidth10,
            CircleAvatar(
              backgroundColor: color.withOpacity(0.2),
              child: Icon(getNotificationIcon(data.type ?? ''), color: color),
            ),
          ],
        ),
        title: Text(data.title ?? '', style: textHeadBold1),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(data.body ?? '', style: textHeadRegular1),
            kHeight5,
            if (isOffer && data.startDate != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: Text(
                  'From: ${formatDateTime(data.startDate!)}',
                  style: textHeadMedium1.copyWith(color: kBluePrimary),
                ),
              ),
            if (isOffer && data.validTill != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: Text(
                  'Valid till: ${formatDateTime(data.validTill!)}',
                  style: textHeadMedium1.copyWith(color: kRed),
                ),
              ),
            Text(formatDateTime(data.timestamp!), style: textHeadRegular1),
          ],
        ),
        trailing: isOffer
            ? null
            : const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_forward_ios_outlined, color: kBlue),
                ],
              ),
      ),
    );
  }
}

class SortingTabs extends StatelessWidget {
  const SortingTabs({super.key, required this.title});

  final bool title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationBloc, NotificationState>(
      builder: (context, state) {
        List<String> sortItem = context.read<NotificationBloc>().sortList;
        sortItem = title ? sortItem.sublist(0, 2) : sortItem.sublist(2);
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(sortItem.length, (index) {
                final selected =
                    state.sortIndexs.contains(title ? index : index + 2);
                return GestureDetector(
                  onTap: () {
                    context
                        .read<NotificationBloc>()
                        .add(NotificationEvent.sort(title ? index : index + 2));
                  },
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              color: kGreyLight)
                        ],
                        borderRadius: kRadius10,
                        border: Border.all(color: kBluelight),
                        color: selected ? kBluePrimary : kWhite),
                    child: Text(
                      sortItem[index],
                      style: textHeadMedium1.copyWith(
                          color: selected ? kWhite : kBlack),
                    ),
                  ),
                );
              }),
            ),
          ),
        );
      },
    );
  }
}
