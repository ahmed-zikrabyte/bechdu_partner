import 'dart:math';

import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/auth/widgets/custom_button_auth.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/snackbar/snack_show.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<dynamic> showDialogAcceptMathCalc(BuildContext context, String orderId) {
  final random = Random();
  return showDialog(
    context: context,
    builder: (context) {
      int num1 = random.nextInt(9) + 0;
      int num2 = random.nextInt(9) + 0;
      String sum = '';
      return Dialog(
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
                        Text(
                            'Complete the math calculation to finish the order',
                            style: textHeadBoldBig),
                        kHeight20,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('$num1', style: textHeadBoldBig),
                            Text('+', style: textHeadBoldBig),
                            Text('$num2', style: textHeadBoldBig),
                            Text('=', style: textHeadBoldBig),
                            SizedBox(
                              width: sWidth * 0.1,
                              child: ColoredBox(
                                color: kBluelight,
                                child: TextField(
                                  onChanged: (value) => sum = value,
                                  keyboardType: TextInputType.number,
                                  style: textHeadBoldBig,
                                  decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 10),
                                      border: InputBorder.none),
                                ),
                              ),
                            )
                          ],
                        ),
                        kHeight40,
                        AuthCustomButtom(
                          onTap: () {
                            try {
                              if (num1 + num2 == int.parse(sum)) {
                                context.read<OrdersBloc>().add(
                                    OrdersEvent.acceptOrder(orderId: orderId));
                                Navigator.of(context).pop();
                              } else {
                                Navigator.of(context).pop();
                                showSnackBar(
                                    context: context,
                                    message: 'Wrong answer',
                                    color: kRed);
                              }
                            } catch (e) {
                              Navigator.of(context).pop();
                              showSnackBar(
                                  context: context,
                                  message: 'Wrong answer',
                                  color: kRed);
                            }
                          },
                          text: 'Accept Order',
                          backgroundColor: kBluePrimary.withValues(alpha: 0.9),
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
      );
    },
  );
}
