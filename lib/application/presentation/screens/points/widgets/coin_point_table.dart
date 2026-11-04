import 'package:bechdu_partner/application/business_logic/pickup_partner/pickup_partner_bloc.dart';
import 'package:bechdu_partner/application/business_logic/points/points_bloc.dart';
import 'package:bechdu_partner/application/presentation/screens/points/widgets/add_coin_dialoge.dart';
import 'package:bechdu_partner/application/presentation/utils/animations/shriking_animation.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoinPointTable extends StatelessWidget {
  const CoinPointTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<PointsBloc>().add(const PointsEvent.getGst());
      context.read<PointsBloc>().add(const PointsEvent.getCoinValue());
    });
    return ClipRRect(
      borderRadius: kRadius5,
      child: ColoredBox(
        color: kBluelight.withValues(alpha: 0.3),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: BlocBuilder<PickupPartnerBloc, PickupPartnerState>(
            builder: (context, state) {
              return Column(children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Available Points', style: textHeadBoldBig),
                      Text(state.partnerProfile?.coins ?? '0',
                          style: textHeadBoldBig)
                    ],
                  ),
                ),
                const Divider(),
                // Padding(
                //   padding:
                //       const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Text('Pending Points', style: textHeadBoldBig),
                //       Text('50', style: textHeadBoldBig)
                //     ],
                //   ),
                // ),
                kHeight20,
                SizedBox(
                  width: sWidth * 0.5,
                  child: InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => const AddCoinsDialoge());
                    },
                    child: AnimatedGrowShrinkContainer(
                      child: Material(
                        elevation: 3,
                        borderRadius: kRadius50,
                        child: ClipRRect(
                          borderRadius: kRadius50,
                          child: ColoredBox(
                            color: kWhite,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: sWidth * 0.03,
                                      backgroundImage:
                                          const AssetImage(iconNottoCoin),
                                    ),
                                    kWidth10,
                                    Text(
                                      'Add Points',
                                      style: textHeadBoldBig,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ]);
            },
          ),
        ),
      ),
    );
  }
}
