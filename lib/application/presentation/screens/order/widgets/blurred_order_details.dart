
import 'package:bechdu_partner/application/presentation/screens/order/widgets/device_detail_orders_session.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/order_detail_image_and_price_session.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/slide_to_accept_order_slider.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/widgets/pickup_detail_order_tile.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/order_detail.dart';
import 'package:flutter/material.dart';

class BlurredOrderDetails extends StatelessWidget {
  const BlurredOrderDetails({
    super.key,
    required this.orderDetail,
  });

  final OrderDetail orderDetail;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(children: [
            OrdersDetailImageAndPriceSession(
                coin: orderDetail.coins ?? '--',
                deviceName: orderDetail.productDetails?.name ?? '----',
                image: orderDetail.productDetails?.image ?? '',
                price: orderDetail.productDetails?.price ?? '--'),
            PickUpDetailOrderTile(
              isBlurred: true,
              isUser: true,
              name: orderDetail.partner?.pickUpPersonName ??
                  orderDetail.partner?.partnerName ??
                  '',
              dateTime:
                  '${orderDetail.pickUpDetails?.time ?? '--,--'} ${orderDetail.pickUpDetails?.date ?? '--/--/--'}',
              address: orderDetail.user?.address ?? '----- ------- -------',
              phone: orderDetail.user?.phone ?? '',
            ),
            kHeight10,
            OrderDetailDiviceDetailsSession(
                productDetails: orderDetail.productDetails)
          ]),
        ),
        SliderOrderAccepting(
            orderId: orderDetail.id!, showError: orderDetail.notification)
      ],
    );
  }
}
