import 'package:bechdu_partner/application/presentation/screens/complete_order/widgets/complete_button.dart';
import 'package:bechdu_partner/application/presentation/screens/complete_order/widgets/device_image_session.dart';
import 'package:bechdu_partner/application/presentation/screens/complete_order/widgets/idcard_and_devicebill_session.dart';
import 'package:bechdu_partner/application/presentation/screens/complete_order/widgets/imei_Image_session.dart';
import 'package:bechdu_partner/application/presentation/screens/complete_order/widgets/price_and_imei_session.dart';
import 'package:bechdu_partner/application/presentation/screens/complete_order/widgets/signature_session.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/order_detail.dart';
import 'package:flutter/material.dart';

final GlobalKey<FormState> completeKey = GlobalKey<FormState>();

class ScreenCompleteOrder extends StatelessWidget {
  const ScreenCompleteOrder({super.key, required this.orderDetail});

  final OrderDetail orderDetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(orderDetail.orderId ?? '', style: textHeadBoldBig2),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: completeKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PriceAndImeiSession(orderDetail: orderDetail),
                const ImeiNumberPhotoSession(),
                kHeight10,
                const IdCardAndDeviceBillSession(),
                kHeight10,
                const DeviceImagesSession(),
                kHeight10,
                const SignatureSession(),
                kHeight20,
                CompleteSubmitButton(orderDetail: orderDetail),
                kHeight30,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
