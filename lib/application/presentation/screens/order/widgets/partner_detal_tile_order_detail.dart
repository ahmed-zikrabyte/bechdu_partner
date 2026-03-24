import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/order/dialoges/show_bottom_sheet_assign_partner.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/dialoge/dialoge.dart';
import 'package:bechdu_partner/application/presentation/widgets/status_colored_box.dart';
import 'package:bechdu_partner/domain/model/order/get_partner_order_response_model/partner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PartnerDetailTile extends StatelessWidget {
  const PartnerDetailTile(
      {super.key,
      required this.partner,
      required this.orderId,
      required this.status});

  final Partner? partner;
  final String orderId;
  final String status;

  @override
  Widget build(BuildContext context) {
    if (status == 'Completed' || status == 'cancelled') {
      return kEmpty;
    }
    Partner? pickup = partner;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Material(
        borderRadius: kRadius5,
        elevation: 5,
        child: ClipRRect(
          borderRadius: kRadius5,
          child: ColoredBox(
            color: kWhite,
            child: ListTile(
              leading: const CircleAvatar(
                  backgroundColor: kGreenPrimary,
                  child: Icon(
                    Icons.person,
                    color: kWhite,
                  )),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                        status == 'cancelled'
                            ? 'Order Status'
                            : pickup?.pickUpPersonName == ''
                                ? 'Assign Pickup'
                                : pickup?.pickUpPersonName ?? '',
                        style: textHeadBold1),
                  ),
                  kWidth20,
                  Expanded(
                    child: status == 'cancelled' || status == 'Completed'
                        ? StatusColoredBox(
                            text: getFirstCapital(status),
                            color: getStatusColor(status))
                        : StatusColoredBox(
                            text: pickup?.pickUpPersonName != ''
                                ? 'DeAssign Partner'
                                : 'Assign Partner',
                            color: kBluePrimary,
                            onTap: () {
                              if (pickup?.pickUpPersonName != '') {
                                showCustomDialoge(
                                    context: context,
                                    title: 'Deassign Pickup ?',
                                    buttonText: 'Deassign',
                                    onTap: () {
                                      context.read<PickupPartnerBloc>().add(
                                          PickupPartnerEvent
                                              .deAssignOrderFromPickupPartner(
                                                  orderId: orderId));
                                    });
                              } else {
                                showBottomSheetAssignPartner(context, orderId);
                              }
                            },
                          ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
