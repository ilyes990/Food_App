// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_app/ui/widgets/app_Column.dart';
import 'package:food_app/ui/widgets/app_icon.dart';
import 'package:food_app/ui/widgets/big_text.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimensions.dart';

class Popularfooddetail extends StatelessWidget {
  const Popularfooddetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(
                      text: "Chinese food",
                    ),
                    SizedBox(height: Dimensions.height20),
                    BigText(text: "Introduce")
                  ],
                )),
          ),
        ],
      ),

      // B O T T O M   N A V B A R

      //
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeighBar,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width30,
            right: Dimensions.width30),
        decoration: BoxDecoration(
            color: greyLighter,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(Dimensions.font20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.remove,
                    color: blackText,
                  ),
                  BigText(text: "0"),
                  Icon(
                    Icons.add,
                    color: blackText,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(Dimensions.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: primarycolor),
              child: BigText(text: "10\$ | Add To Cart"),
            )
          ],
        ),
      ),
    );
  }
}
