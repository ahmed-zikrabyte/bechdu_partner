import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class CustomAddIcon extends StatelessWidget {
  const CustomAddIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, Routes.addPickUpPage),
      child: Material(
        elevation: 3,
        borderRadius: kRadius50,
        shadowColor: kGreenPrimary,
        borderOnForeground: true,
        child: CircleAvatar(
          radius: sWidth * 0.037,
          backgroundColor: kGreenPrimary.withValues(alpha: 0.5),
          child: CircleAvatar(
            radius: sWidth * 0.033,
            backgroundColor: kWhite,
            child: CircleAvatar(
              backgroundColor: kGreenPrimary,
              radius: sWidth * 0.03,
              child: Icon(
                Icons.add,
                color: kWhite,
                size: sWidth * 0.05,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
