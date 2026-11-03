import 'package:bechdu_partner/application/business_logic/notification/notification_bloc.dart';
import 'package:bechdu_partner/application/business_logic/order/orders/orders_bloc.dart';
import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/order_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhoneDetailTile extends StatelessWidget {
  const PhoneDetailTile({
    super.key,
    required this.orderDetail,
    this.onTap,
  });

  final OrderDetail orderDetail;
  final VoidCallback? onTap;

  String _getCityName() {
    if (orderDetail.user?.ordercity != null &&
        orderDetail.user!.ordercity!.trim().isNotEmpty) {
      return orderDetail.user!.ordercity!.trim();
    }

    final address = orderDetail.user?.address?.trim();
    if (address == null || address.isEmpty) {
      return '';
    }

    final pincode = orderDetail.user?.orderpincode?.trim() ?? '';

    // Split by any whitespace sequence to avoid empty string elements from multiple spaces
    final tokens = address
        .split(RegExp(r'\s+'))
        .map((t) => t.trim())
        .where((t) => t.isNotEmpty)
        .toList();

    if (tokens.isEmpty) {
      return '';
    }

    String cleanToken(String token) {
      return token.replaceAll(RegExp(r'^[^a-zA-Z0-9]+|[^a-zA-Z0-9]+$'), '');
    }

    int cityIndex = -1;
    for (int i = tokens.length - 1; i >= 0; i--) {
      final cleaned = cleanToken(tokens[i]);

      // Skip empty or punctuation-only tokens
      if (cleaned.isEmpty) {
        continue;
      }

      // Skip pincode (matches user's pincode or standard 6-digit postal code)
      if ((pincode.isNotEmpty && cleaned == pincode) ||
          RegExp(r'^\d{6}$').hasMatch(cleaned)) {
        continue;
      }

      cityIndex = i;
      break;
    }

    if (cityIndex == -1) {
      return '';
    }

    String city = cleanToken(tokens[cityIndex]);

    // Check if preceding token is a modifier like "New", "Navi", "Greater", etc.
    if (cityIndex > 0) {
      final prevCleaned = cleanToken(tokens[cityIndex - 1]);
      const prefixes = {
        'new',
        'navi',
        'greater',
        'north',
        'south',
        'east',
        'west',
        'old',
      };
      if (prefixes.contains(prevCleaned.toLowerCase())) {
        city = '$prevCleaned $city';
      }
    }

    return city;
  }

  String _getPincode() {
    if (orderDetail.user?.orderpincode != null &&
        orderDetail.user!.orderpincode!.trim().isNotEmpty) {
      return orderDetail.user!.orderpincode!.trim();
    }
    final address = orderDetail.user?.address?.trim();
    if (address != null && address.isNotEmpty) {
      final match = RegExp(r'\b\d{6}\b').firstMatch(address);
      if (match != null) {
        return match.group(0)!;
      }
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    final cityName = _getCityName();
    final pincode = _getPincode();

    return InkWell(
      onTap: onTap ??
          () {
            FocusScope.of(context).unfocus();
            Navigator.pushNamed(context, Routes.orderScreen,
                arguments: orderDetail);
            context
                .read<NotificationBloc>()
                .add(const NotificationEvent.getNotifications(reset: true));
            context.read<OrdersBloc>().add(
                OrdersEvent.changeNotificationStatusOrder(
                    orderId: orderDetail.id!));
          },
      child: ClipRRect(
        borderRadius: kRadius5,
        child: ColoredBox(
          color: kWhite,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: sWidth * 0.17,
                      width: sWidth * 0.22,
                      child: FittedBox(
                          child: Image.network(
                        orderDetail.productDetails!.image!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.broken_image_outlined,
                                color: kGreyLight),
                      )),
                    ),
                    kWidth20,
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            orderDetail.productDetails?.name ?? '-----------',
                            style: textHeadRegular1,
                          ),
                          orderDetail.deviceInfo?.finalPrice?.isNotEmpty ??
                                  false
                              ? Text('₹ ${orderDetail.deviceInfo?.finalPrice}',
                                  style: textHeadRegular1.copyWith(
                                      color: kGreyLight))
                              : Text(
                                  '₹ ${orderDetail.promo?.price == '' ? orderDetail.productDetails?.price : "${orderDetail.productDetails?.price} + ${orderDetail.promo?.price} \n(${orderDetail.promo?.code ?? ''})"}',
                                  style: textHeadRegular1.copyWith(
                                      color: kGreyLight),
                                ),
                          Row(
                            children: [
                              Text(orderDetail.coins ?? '--',
                                  style: textHeadBold1),
                              kWidth5,
                              CircleAvatar(
                                radius: sWidth * 0.02,
                                backgroundColor: kWhite,
                                backgroundImage:
                                    const AssetImage(iconNottoCoin),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const Expanded(
                      child: Icon(
                        Icons.arrow_circle_right_rounded,
                        color: kBluePrimary,
                      ),
                    ),
                    kWidth10
                  ],
                ),
              ),
              Positioned(
                bottom: 2,
                right: 5,
                child: Row(
                  children: [
                    if (cityName.isNotEmpty)
                      Text(
                        cityName,
                        style: textHeadRegular1.copyWith(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                    if (cityName.isNotEmpty && pincode.isNotEmpty) kWidth5,
                    if (pincode.isNotEmpty)
                      Text(
                        pincode,
                        style: textHeadRegular1.copyWith(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
