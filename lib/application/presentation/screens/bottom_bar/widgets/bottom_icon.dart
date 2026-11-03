import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class BottomIconMaker extends StatelessWidget {
  const BottomIconMaker({
    super.key,
    this.image,
    this.icon,
    this.ontap,
    this.text,
    this.isSelected = false,
  });

  final String? image;
  final IconData? icon;
  final VoidCallback? ontap;
  final String? text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (ontap != null) {
          ontap!();
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image != null
              ? Container(
                  height: 22,
                  width: 22,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image!),
                    ),
                  ),
                )
              : Icon(
                  icon ?? Icons.help_outline,
                  size: 22,
                  color: isSelected ? kGreenPrimary : kBlack,
                ),
          if (text != null) ...[
            const SizedBox(height: 3),
            Text(
              text!,
              style: TextStyle(
                fontFamily: gilroyMedium,
                fontSize: sWidth < 380 ? 9.5 : 10,
                color: isSelected ? kGreenPrimary : kBlack,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
          if (isSelected) ...[
            const SizedBox(height: 3),
            ClipRRect(
              borderRadius: kRadius5,
              child: SizedBox(
                height: 3,
                width: sWidth * 0.08,
                child: const ColoredBox(
                  color: kGreenPrimary,
                ),
              ),
            ),
          ] else if (text != null) ...[
            const SizedBox(height: 3),
            ClipRRect(
              borderRadius: kRadius5,
              child: SizedBox(
                height: 3,
                width: sWidth * 0.08,
                child: const ColoredBox(
                  color: Colors.transparent,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
