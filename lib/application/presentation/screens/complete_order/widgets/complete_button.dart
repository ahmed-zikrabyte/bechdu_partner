import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/screens/auth/widgets/custom_button_auth.dart';
import 'package:bechdu_partner/application/presentation/screens/complete_order/complete_order_screen.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/snackbar/snack_show.dart';
import 'package:bechdu_partner/domain/model/order/complete_order_model/complete_order_model.dart';
import 'package:bechdu_partner/domain/model/order/complete_order_model/device_info.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/order_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompleteSubmitButton extends StatelessWidget {
  const CompleteSubmitButton({
    super.key,
    required this.orderDetail,
  });

  final OrderDetail orderDetail;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrdersBloc, OrdersState>(
      listenWhen: (previous, current) => current.orderCompleted,
      listener: (context, state) {
        if (state.message != null) {
          showSnackBar(
              context: context, message: state.message!, color: kGreenPrimary);
        }
        Navigator.pushNamedAndRemoveUntil(context,
            partner ? Routes.bottomBar : Routes.homePage, (route) => false);
      },
      builder: (context, state) {
        if (state.completeOrderLoading) {
          return const Center(
              child: CircularProgressIndicator(color: kOrangePrimary));
        }
        return AuthCustomButtom(
          onTap: () {
            if (completeKey.currentState!.validate() &&
                !state.orderCompletionError) {
              if (state.idCard == null ||
                  state.deviceBill == null ||
                  state.signatureImage == null ||
                  state.deviceImages == null) {
                showSnackBar(
                    context: context,
                    message:
                        'add ${state.idCard == null ? 'idcard, ' : ''}${state.deviceBill == null ? 'device bill, ' : ''}${state.signatureImage == null ? 'signature, ' : ''}${state.deviceImages == null ? 'device images ' : ''}to continue',
                    color: kRed);
                context
                    .read<OrdersBloc>()
                    .add(const OrdersEvent.checkErrorCompleteOrder());
              } else {
                final options = orderDetail.productDetails?.options ?? [];
                String getOptionValue(String heading) {
                  try {
                    return options
                            .firstWhere((element) =>
                                element.heading?.toLowerCase() ==
                                heading.toLowerCase())
                            .description ??
                        '';
                  } catch (e) {
                    return '';
                  }
                }

                context.read<OrdersBloc>().add(
                      OrdersEvent.completeOrder(
                        orderId: orderDetail.id!,
                        completeOrderModel: CompleteOrderModel(
                          customerSignature: state.signatureImage!.base64Image,
                          deviceInfo: DeviceInfo(
                            deviceName: orderDetail.productDetails?.name ?? '',
                            imei: context
                                .read<OrdersBloc>()
                                .imeiNumberController
                                .text
                                .trim(),
                            condition: getOptionValue('Condition'),
                            storage: getOptionValue('Storage'),
                            color: getOptionValue('Color'),
                            imeiImage: state.imeiImage?.base64Image ?? '',
                            signatureImage: state.signatureImage!.base64Image,
                            deviceBill: state.deviceBill!.base64Image,
                            idCard: state.idCard!
                                .map((e) => e.base64Image)
                                .toList(),
                            finalPrice: context
                                .read<OrdersBloc>()
                                .finalPriceController
                                .text
                                .trim(),
                            imeiNumber: context
                                .read<OrdersBloc>()
                                .imeiNumberController
                                .text
                                .trim(),
                            deviceImages: state.deviceImages!
                                .map((e) => e.base64Image)
                                .toList(),
                          ),
                        ),
                      ),
                    );
              }
            }
          },
          text: 'Complete',
          backgroundColor: kGreenPrimary,
        );
      },
    );
  }
}
