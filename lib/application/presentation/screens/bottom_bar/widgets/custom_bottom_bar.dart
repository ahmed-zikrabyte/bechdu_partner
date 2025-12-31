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
          height: sWidth * 0.15,
          padding: const EdgeInsets.only(top: 20),
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
              Column(
                children: [
                  const BottomIconMaker(image: iconHome),
                  kHeight5,
                  ClipRRect(
                    borderRadius: kRadius5,
                    child: SizedBox(
                        height: 3,
                        width: sWidth * 0.1,
                        child: const ColoredBox(color: kGreenPrimary)),
                  )
                ],
              ),
              BottomIconMaker(
                  image: iconMoney,
                  ontap: () {
                    Navigator.pushNamed(context, Routes.transcationPage);
                  }),
              BottomIconMaker(
                  image: iconPeople,
                  ontap: () {
                    Navigator.pushNamed(context, Routes.partnersList);
                  }),
              BottomIconMaker(
                image: iconSettings,
                ontap: () => Navigator.pushNamed(context, Routes.settingsPage),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
