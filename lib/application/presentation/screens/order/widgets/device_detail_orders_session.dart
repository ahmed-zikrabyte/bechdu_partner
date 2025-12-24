import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/option.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/product_details.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrderDetailDiviceDetailsSession extends StatelessWidget {
  OrderDetailDiviceDetailsSession({super.key, required this.productDetails});

  final ProductDetails? productDetails;
  Map<String, List<Option>> deviceQuestions = {};

  @override
  Widget build(BuildContext context) {
    if (productDetails != null && productDetails!.options != null) {
      for (Option opt in productDetails!.options!) {
        if (!deviceQuestions.containsKey(opt.heading)) {
          deviceQuestions[opt.heading ?? '----'] = [];
        }
        deviceQuestions[opt.heading ?? '----'] = [
          ...deviceQuestions[opt.heading ?? '----']!,
          opt
        ];
      }
    }
    return productDetails == null ||
            productDetails?.options == null ||
            deviceQuestions.isEmpty
        ? kEmpty
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Material(
              elevation: 5,
              borderRadius: kRadius5,
              child: ClipRRect(
                borderRadius: kRadius5,
                child: ColoredBox(
                  color: kWhite,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                            kHeight10,
                            Text('Device Details', style: textHeadBoldBig),
                            kHeight10,
                          ] +
                          List.generate(deviceQuestions.keys.length, (index) {
                            List<Option> data = deviceQuestions[
                                    deviceQuestions.keys.toList()[index]] ??
                                [];
                            if (data.first.value != null) {
                              return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                        Text(data.first.heading ?? '-----',
                                            style: textHeadBold1)
                                      ] +
                                      List.generate(
                                        data.length,
                                        (position) => Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                  data[position].description ??
                                                      '--- ---',
                                                  style: textHeadBold1),
                                            ),
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  const Expanded(child: kEmpty),
                                                  Expanded(
                                                    child: SizedBox(
                                                      width: sWidth * 0.1,
                                                      child: ClipRRect(
                                                        borderRadius: kRadius15,
                                                        child: ColoredBox(
                                                          color: data[position]
                                                                  .value!
                                                              ? kGreenLight
                                                              : kRedLight
                                                                  .withOpacity(
                                                                      0.5),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        10,
                                                                    vertical:
                                                                        3),
                                                            child: Row(
                                                              children: [
                                                                Icon(
                                                                  data[position]
                                                                          .value!
                                                                      ? Icons
                                                                          .check
                                                                      : Icons
                                                                          .clear_outlined,
                                                                  size: sWidth *
                                                                      0.03,
                                                                ),
                                                                kWidth5,
                                                                Text(
                                                                  data[position]
                                                                          .value!
                                                                      ? 'Yes'
                                                                      : 'No',
                                                                  style:
                                                                      textHeadMedium1,
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ) +
                                      [
                                        const Row(
                                          children: [kHeight20],
                                        )
                                      ]);
                            } else {
                              return Column(
                                children: List.generate(
                                      data.length,
                                      (position) => Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: position == 0
                                                ? Text(
                                                    data.first.heading ??
                                                        '-----',
                                                    style: textHeadBold1)
                                                : kEmpty,
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                                '* ${data[position].description ?? '--- ---'}',
                                                style: textHeadRegular1),
                                          )
                                        ],
                                      ),
                                    ) +
                                    [
                                      const Row(
                                        children: [kHeight20],
                                      )
                                    ],
                              );
                            }
                          }),
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
