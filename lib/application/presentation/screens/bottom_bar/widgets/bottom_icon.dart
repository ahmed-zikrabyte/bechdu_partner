import 'package:flutter/material.dart';

class BottomIconMaker extends StatelessWidget {
  const BottomIconMaker({
    super.key,
    this.image,
    this.icon,
    this.ontap,
  });

  final String? image;
  final IconData? icon;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (ontap != null) {
          ontap!();
        }
      },
      child: image != null
          ? Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image!),
                ),
              ),
            )
          : Icon(
              icon ?? Icons.help_outline,
              size: 25,
            ),
    );
  }
}
