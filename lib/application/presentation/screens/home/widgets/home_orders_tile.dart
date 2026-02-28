import 'package:bechdu_partner/application/presentation/screens/home/widgets/phone_detail_tile.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/widgets/custom_expansion_tile.dart';
import 'package:bechdu_partner/application/presentation/widgets/pickup_detail_order_tile.dart';
import 'package:bechdu_partner/application/presentation/widgets/status_colored_box.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/order_detail.dart';
import 'package:flutter/material.dart';

class OrdersListTileHome extends StatelessWidget {
  const OrdersListTileHome({
    super.key,
    required this.orderDetail,
    required this.showExpansion,
  });

  final OrderDetail orderDetail;
  final bool showExpansion;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
      decoration: BoxDecoration(
          borderRadius: kRadius5,
          color: kBluelight,
          border: Border.all(color: kBlack)),
      child: CustomExpansionTile(
        isExpandable: !showExpansion,
        title: Row(
          children: [
            kWidth10,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order No.',
                  style: textHeadMedium1,
                ),
                Text(
                  orderDetail.orderId ?? '',
                  style: textHeadRegular1,
                )
              ],
            ),
            const Spacer(),
            StatusColoredBox(
              color: getStatusColor(orderDetail.status ?? ''),
              text: getFirstCapital(orderDetail.status),
            ),
            kWidth10
          ],
        ),
        subTitle: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(30, (index) => const Text('_')),
            ),
            kHeight5,
            PhoneDetailTile(orderDetail: orderDetail),
          ],
        ),
        children: showExpansion
            ? []
            : [
                PickUpDetailOrderTile(
                  isUser: false,
                  name: orderDetail.partner!.pickUpPersonName != null &&
                          orderDetail.partner!.pickUpPersonName!.isNotEmpty
                      ? orderDetail.partner!.pickUpPersonName!
                      : '',
                  dateTime:
                      '${orderDetail.pickUpDetails?.time ?? '--,--'} ${orderDetail.pickUpDetails?.date ?? '--/--/--'}',
                  address: orderDetail.user?.address ?? '----- ------- -------',
                  phone: orderDetail.user?.phone ?? '',
                  addPhone: orderDetail.user?.addPhone,
                )
              ],
      ),
    );
  }
}
