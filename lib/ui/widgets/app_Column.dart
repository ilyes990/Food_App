// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_app/ui/widgets/big_text.dart';
import 'package:food_app/ui/widgets/icon_with_text.dart';
import 'package:food_app/ui/widgets/small_text.dart';
import 'package:food_app/utils/dimensions.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        SmallText(text: "With chinese characteristics"),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconWithText(
                text: "Normal",
                icon: Icons.circle_rounded,
                iconColor: Colors.orange),
            IconWithText(
                text: "1.2Km",
                icon: Icons.location_pin,
                iconColor: Colors.green),
            IconWithText(
                text: "32min", icon: Icons.timer_sharp, iconColor: Colors.red),
          ],
        )
      ],
    );
  }
}
