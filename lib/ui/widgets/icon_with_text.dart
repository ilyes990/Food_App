// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/ui/widgets/small_text.dart';

class IconWithText extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final Color iconColor;
  const IconWithText({
    super.key,
    required this.text,
    required this.icon,
    this.color = const Color.fromARGB(255, 138, 138, 138),
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        SizedBox(
          width: 5,
        ),
        SmallText(
          text: text,
          color: color,
        ),
      ],
    );
  }
}
