// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/ui/widgets/app_Column.dart';
import 'package:food_app/ui/widgets/app_icon.dart';
import 'package:food_app/ui/widgets/big_text.dart';
import 'package:food_app/ui/widgets/icon_with_text.dart';
import 'package:food_app/ui/widgets/small_text.dart';
import 'package:food_app/utils/dimensions.dart';

class Popularfooddetail extends StatelessWidget {
  const Popularfooddetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //
          // B A C K G R O U N D    I M A G E
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularfoodImgSize,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/food01.jpg"), fit: BoxFit.cover),
              ),
            ),
          ),
          //

          // I C O N S
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          //

          // W H I T E   C O N T A I N E R
          Positioned(
            left: 0,
            right: 0,
            top: Dimensions.popularfoodImgSize - 20,
            bottom: 0,
            child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.height20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(Dimensions.radius20),
                        topLeft: Radius.circular(Dimensions.radius20)),
                    color: Colors.white),
                child: Column(
                  children: [
                    AppColumn(text: "Chinese food",),
                    
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
