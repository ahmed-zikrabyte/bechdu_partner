import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

void showCustomDialoge(
    {required BuildContext context,
    required String title,
    Color buttonColor = kGreenPrimary,
    required String buttonText,
    String cancelButtonText = 'Cancel',
    VoidCallback? onCancelTap,
    required VoidCallback onTap}) {
  showDialog(
    context: context,
    builder: (context) => Dialog(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(borderRadius: kRadius15, color: kWhite),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: textHeadBold1,
            ),
            kHeight20,
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: kBluePrimary)),
                      onPressed: () {
                        Navigator.pop(context);
                        if (onCancelTap != null) {
                          onCancelTap();
                        }
                      },
                      child: Text(
                        cancelButtonText,
                        style: textHeadMedium1.copyWith(color: kBluePrimary),
                      )),
                  kWidth20,
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(color: buttonColor)),
                      onPressed: () {
                        Navigator.pop(context);
                        onTap();
                      },
                      child: Text(buttonText,
                          style: textHeadMedium1.copyWith(color: buttonColor)))
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
