import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/business_logic/order/requote/requote_bloc.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/widgets/custom_text_form_field.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/order_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PriceAndImeiSession extends StatefulWidget {
  const PriceAndImeiSession({
    super.key,
    required this.orderDetail,
  });

  final OrderDetail orderDetail;

  @override
  State<PriceAndImeiSession> createState() => _PriceAndImeiSessionState();
}

class _PriceAndImeiSessionState extends State<PriceAndImeiSession> {
  /// The autofilled price that the user cannot go below.
  late int _minPrice;

  @override
  void initState() {
    super.initState();
    // Compute the same floor price that will be autofilled into the controller.
    int basePrice = int.tryParse(
          context.read<RequoteBloc>().finalPrice != ''
              ? context.read<RequoteBloc>().finalPrice
              : widget.orderDetail.productDetails?.price ?? '0',
        ) ??
        0;

    if (widget.orderDetail.promo?.price != '' &&
        widget.orderDetail.promo?.price != null) {
      _minPrice = basePrice +
          (int.tryParse(widget.orderDetail.promo?.price ?? '0') ?? 0);
    } else {
      _minPrice = basePrice;
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<OrdersBloc>().finalPriceController.text =
          _minPrice.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: CircleAvatar(
            backgroundColor: kWhite,
            radius: sWidth * 0.20,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child:
                  Image.network(widget.orderDetail.productDetails?.image ?? ''),
            ),
          ),
        ),
        widget.orderDetail.promo?.price != '' &&
                widget.orderDetail.promo?.price != null
            ? kHeight10
            : kEmpty,
        widget.orderDetail.promo?.price != '' &&
                widget.orderDetail.promo?.price != null
            ? Text.rich(
                TextSpan(
                  text: 'The promo code ',
                  style: textHeadRegular2,
                  children: [
                    TextSpan(
                      text: '${widget.orderDetail.promo?.code}',
                      style: const TextStyle(
                          color: kGreenPrimary, fontWeight: FontWeight.w700),
                    ),
                    TextSpan(
                      text:
                          ' has been applied to this order, adding its value of ',
                      style: textHeadRegular2,
                    ),
                    TextSpan(
                      text: '₹${widget.orderDetail.promo?.price}',
                      style: const TextStyle(
                          color: kGreenPrimary, fontWeight: FontWeight.w700),
                    ),
                    TextSpan(
                      text: '.',
                      style: textHeadRegular2,
                    ),
                  ],
                ),
              )
            : kEmpty,
        kHeight10,
        Text('Final Price', style: textHeadRegular2),
        CustomTextFormField(
          keyboardType: TextInputType.number,
          validate: Validate.notNull,
          controller: context.read<OrdersBloc>().finalPriceController,
          hintText: 'Final Price',
          minValue: _minPrice,
        ),
        kHeight10,
        Text('IMEI Number', style: textHeadRegular2),
        CustomTextFormField(
          keyboardType: TextInputType.number,
          validate: Validate.imei,
          maxlength: 15,
          controller: context.read<OrdersBloc>().imeiNumberController,
          hintText: 'IMEI Number',
        ),
        kHeight10,
      ],
    );
  }
}
