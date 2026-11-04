import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/widgets/status_colored_box.dart';
import 'package:bechdu_partner/domain/model/requote/price_calculation_model/selected_option.dart';
import 'package:bechdu_partner/domain/model/requote/requote_price_model/requote_price_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void showDialogeRequote(context) {
  showDialog(
    context: context,
    builder: (context) => Dialog(
      child: ClipRRect(
        borderRadius: kRadius10,
        child: BlocBuilder<OrdersBloc, OrdersState>(
          builder: (context, state) {
            return ColoredBox(
              color: kWhite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: sWidth * 0.55,
                        width: sWidth * 0.8,
                        child: state.orderDetail == null
                            ? null
                            : Image.network(
                                state.orderDetail!.productDetails!.image!,
                                fit: BoxFit.contain,
                              ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.close,
                            color: kWhite,
                          ),
                        ),
                      )
                    ],
                  ),
                  kHeight10,
                  FittedBox(
                    child: Text(
                      state.orderDetail?.productDetails?.name ?? '',
                      style: textHeadBold1,
                    ),
                  ),
                  kHeight20,
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Old Price', style: textHeadBold1),
                            Text(
                                '₹ ${state.orderDetail?.productDetails?.price ?? ''}',
                                style: textHeadRegular1)
                          ],
                        ),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: BlocBuilder<RequoteBloc, RequoteState>(
                          builder: (context, state) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('New Price', style: textHeadBold1),
                                Text('₹ ${state.basePrice}',
                                    style: textHeadRegular1)
                              ],
                            );
                          },
                        ),
                      ),
                      BlocBuilder<OrdersBloc, OrdersState>(
                        builder: (context, order) {
                          if (order.orderDetail?.promo == null ||
                              order.orderDetail?.promo?.price == '') {
                            return kEmpty;
                          }
                          return Column(
                            children: [
                              const Divider(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: BlocBuilder<RequoteBloc, RequoteState>(
                                  builder: (context, state) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Promo price',
                                            style: textHeadBold1),
                                        Text(
                                            '₹ ${order.orderDetail?.promo?.price ?? ''}',
                                            style: textHeadRegular1)
                                      ],
                                    );
                                  },
                                ),
                              ),
                              const Divider(),
                              kHeight5,
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: BlocBuilder<RequoteBloc, RequoteState>(
                                  builder: (context, state) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('New Total',
                                            style: textHeadBold1.copyWith(
                                                color: kGreenPrimary)),
                                        Text(
                                            '₹ ${int.parse(order.orderDetail?.promo?.price ?? '0') + int.parse(state.basePrice ?? '0')}',
                                            style: textHeadRegular1)
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      kHeight30,
                      BlocBuilder<OrdersBloc, OrdersState>(
                        builder: (context, order) {
                          return BlocConsumer<RequoteBloc, RequoteState>(
                            listener: (context, state) {
                              if (state.requoteDone) {
                                context.read<OrdersBloc>().add(
                                    OrdersEvent.getOrderDetail(
                                        orderId: order.orderDetail!.id!));
                                context.read<OrdersBloc>().add(
                                    const OrdersEvent.getPartnerOrders(
                                        call: true));
                                Navigator.pushReplacementNamed(
                                    context, Routes.completeOrderPage,
                                    arguments: order.orderDetail);
                              }
                            },
                            builder: (context, state) {
                              if (state.requoteLoading) {
                                return const Center(
                                    child: CircularProgressIndicator(
                                        color: kBluePrimary));
                              }
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                          Navigator.pop(context);
                                          Navigator.pop(context);
                                          // showDialogeCancel(
                                          //     context, order.orderDetail!.id!);
                                        },
                                        child: const StatusColoredBox(
                                            text: 'Cancel',
                                            color: kRed,
                                            fontWeight: FontWeight.w700,
                                            verticalPadding: 10),
                                      ),
                                    ),
                                    kWidth20,
                                    Expanded(
                                        child: StatusColoredBox(
                                            text: 'Continue',
                                            onTap: () {
                                              List<SelectedOption> list = [];
                                              for (var element
                                                  in state.sections!) {
                                                list.addAll(
                                                    state.selectedAnswers[
                                                        element.heading]!);
                                              }
                                              context.read<RequoteBloc>().add(
                                                  RequoteEvent.requotePrice(
                                                      orderId: order
                                                          .orderDetail!.id!,
                                                      requotePriceModel:
                                                          RequotePriceModel(
                                                              price: state
                                                                  .basePrice,
                                                              options: list)));
                                            },
                                            color: kGreenPrimary,
                                            fontWeight: FontWeight.w700,
                                            verticalPadding: 10))
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                      kHeight10
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    ),
  );
}
