// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_app/home/food_page_body.dart';
import 'package:food_app/ui/widgets/big_text.dart';
import 'package:food_app/ui/widgets/small_text.dart';
import 'package:food_app/utils/colors.dart';

class MainfoodPage extends StatefulWidget {
  const MainfoodPage({super.key});

  @override
  State<MainfoodPage> createState() => _MainfoodPageState();
}

class _MainfoodPageState extends State<MainfoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 45),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "Algeria",
                        color: primarycolor,
                        size: 22,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SmallText(text: "Annaba"),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: primarycolor),
                    child: Icon(
                      Icons.search,
                      color: whiteIcon,
                    ),
                  )
                ],
              ),
            ),
            Expanded(child: SingleChildScrollView(child: FoodPageBody())),
          ],
        ),
      ),
    );
  }
}
