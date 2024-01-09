// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_app/ui/widgets/big_text.dart';
import 'package:food_app/ui/widgets/icon_with_text.dart';
import 'package:food_app/ui/widgets/small_text.dart';
import 'package:food_app/utils/dimensions.dart';

import '../../utils/colors.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // T I T L E
        BigText(text: "Spaghetti"),
        SizedBox(
          height: Dimensions.height10,
        ),
        // R A T I N G   &  C O M M E N T S
        Row(
          children: [
            Wrap(
              children: List<Icon>.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: primarycolor,
                        size: 18,
                      )),
            ),
            SizedBox(
              width: 15,
            ),
            SmallText(text: "4.7", size: 15),
            SizedBox(
              width: 15,
            ),
            SmallText(text: "48 comments", size: 15),
          ],
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        // I C O N    &   T E X T
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
