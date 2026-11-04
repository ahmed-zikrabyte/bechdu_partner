import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/auth/widgets/custom_button_auth.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final GlobalKey<FormState> cancelKey = GlobalKey<FormState>();

void showDialogeCancel(context, orderId) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        child: SingleChildScrollView(
          child: ClipRRect(
            borderRadius: kRadius5,
            child: ColoredBox(
              color: kWhite,
              child: Stack(
                children: [
                  SizedBox(
                    width: sWidth * 0.90,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          kHeight20,
                          Text('Reason For Cancelling The Order',
                              style: textHeadBoldBig),
                          kHeight20,
                          ColoredBox(
                            color: kGreyLight.withValues(alpha: 0.2),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Form(
                                key: cancelKey,
                                child: TextFormField(
                                  controller: context
                                      .read<OrdersBloc>()
                                      .cancelController,
                                  maxLines: 5,
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Write here'),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'enter reason for cancelation';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                          kHeight50,
                          AuthCustomButtom(
                            onTap: () {
                              if (cancelKey.currentState!.validate()) {
                                Navigator.pop(context);
                                context.read<OrdersBloc>().add(
                                    OrdersEvent.cancelOrder(
                                        orderId: orderId,
                                        reason: context
                                            .read<OrdersBloc>()
                                            .cancelController
                                            .text
                                            .trim()));
                              }
                            },
                            text: 'Cancel',
                            backgroundColor: kRed.withValues(alpha: 0.9),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 5,
                    child: ClipRRect(
                      borderRadius: kRadius50,
                      child: ColoredBox(
                        color: kBluePrimary,
                        child: InkWell(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.close,
                            color: kWhite,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
