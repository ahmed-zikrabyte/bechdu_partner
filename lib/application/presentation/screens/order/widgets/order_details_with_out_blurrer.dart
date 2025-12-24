import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/device_detail_orders_session.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/download_invoice_order.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/order_detail_image_and_price_session.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/order_detail_top_potion.dart';
import 'package:bechdu_partner/application/presentation/screens/order/widgets/partner_detal_tile_order_detail.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/shimmer/shimmer_loader.dart';
import 'package:bechdu_partner/application/presentation/widgets/pickup_detail_order_tile.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/order_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderDetailWithoutBlur extends StatelessWidget {
  const OrderDetailWithoutBlur({
    super.key,
    required this.orderDetail,
  });

  final OrderDetail orderDetail;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          OrdersDetailImageAndPriceSession(
              coin: orderDetail.coins ?? '--',
              deviceName: orderDetail.productDetails?.name ?? '----',
              image: orderDetail.productDetails?.image ?? '',
              price: orderDetail.deviceInfo?.finalPrice ??
                  orderDetail.productDetails?.price ??
                  '--'),
          orderDetail.status == 'cancelled' || orderDetail.status == 'Completed'
              ? kEmpty
              : OrderDetailTopPart(orderDetail: orderDetail),
          kHeight20,
          partner
              ? BlocBuilder<PickupPartnerBloc, PickupPartnerState>(
                  builder: (context, state) {
                    if (state.assigningOrderLoader) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: ShimmerLoader(
                            itemCount: 1,
                            height: 50,
                            scrollDirection: Axis.vertical,
                            width: double.infinity),
                      );
                    }
                    return PartnerDetailTile(
                        status: orderDetail.status ?? '',
                        partner: orderDetail.partner,
                        orderId: orderDetail.id!);
                  },
                )
              : kEmpty,
          partner ? kHeight20 : kEmpty,
          partner && orderDetail.status == 'Completed'
              ? const OrderInvoiceDownload()
              : kEmpty,
          partner && orderDetail.status == 'Completed' ? kHeight20 : kEmpty,
          PickUpDetailOrderTile(
            isBlurred: orderDetail.status == 'cancelled',
            isUser: true,
            name: orderDetail.user?.name ?? '',
            dateTime:
                '${orderDetail.pickUpDetails?.time ?? '--,--'} ${orderDetail.pickUpDetails?.date ?? '--/--/--'}',
            address: orderDetail.user?.address ?? '----- ------- -------',
            phone: orderDetail.user?.phone ?? '',
          ),
          kHeight10,
          OrderDetailDiviceDetailsSession(
              productDetails: orderDetail.productDetails),
          kHeight20
        ],
      ),
    );
  }
}
