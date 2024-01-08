import 'package:flutter/material.dart';
import 'package:food_app/utils/dimensions.dart';

class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final TextOverflow? overflow;

  const BigText(
      {super.key,
      this.color = Colors.black,
      required this.text,
      this.size = 0,
      this.overflow = TextOverflow.ellipsis});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size == 0 ? Dimensions.font20 : size,
          fontWeight: FontWeight.w500,
          overflow: overflow),
    );
  }
}
