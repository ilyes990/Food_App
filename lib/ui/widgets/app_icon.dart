import 'package:flutter/material.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimensions.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundcolor;
  final Color iconColor;
  final double size;
  const AppIcon(
      {super.key,
      required this.icon,
      this.backgroundcolor = const Color(0xFF8A8A8A),
      this.iconColor = const Color(0xFF424242),
      this.size = 40});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size / 2), color: greyLighter),
      child: Icon(
        icon,
        color: iconColor,
        size: Dimensions.iconsSize16,
      ),
    );
  }
}
