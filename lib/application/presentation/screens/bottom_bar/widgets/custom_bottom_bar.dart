import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/screens/bottom_bar/widgets/bottom_icon.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SafeArea(
        top: false,
        child: Container(
          height: sWidth * 0.18,
          padding: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              color: kWhite,
              boxShadow: [
                BoxShadow(
                  color: kGreyLight.withOpacity(0.3),
                  blurRadius: 5.0,
                  offset: const Offset(-5.0, -5.0),
                ),
              ],
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(150),
                  topRight: Radius.circular(150))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BottomIconMaker(
                image: iconHome,
                text: 'Home',
                isSelected: true,
              ),
              BottomIconMaker(
                image: iconMoney,
                text: 'Transaction',
                ontap: () {
                  Navigator.pushNamed(context, Routes.transcationPage);
                },
              ),
              BottomIconMaker(
                image: iconPeople,
                text: 'Pickup Executive',
                ontap: () {
                  Navigator.pushNamed(context, Routes.partnersList);
                },
              ),
              BottomIconMaker(
                icon: Icons.fact_check_outlined,
                text: 'QC Report',
                ontap: () {
                  Navigator.pushNamed(context, Routes.qcReportsPage);
                },
              ),
              BottomIconMaker(
                image: iconSettings,
                text: 'Setting',
                ontap: () => Navigator.pushNamed(context, Routes.settingsPage),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
