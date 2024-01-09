// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:food_app/ui/widgets/big_text.dart';
import 'package:food_app/ui/widgets/icon_with_text.dart';
import 'package:food_app/ui/widgets/small_text.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimensions.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  final PageController _pageController = PageController(viewportFraction: 0.85);
  var currentPageitem = 0.0;
  double height = Dimensions.pageViewContainer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _pageController.addListener(() {
      setState(() {
        currentPageitem = _pageController.page!;
        print("the current page number is $currentPageitem");
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //

        // S L I D E R     S E C T I O N

        SizedBox(
          height: Dimensions.pageView,
          // decoration: BoxDecoration(color: Colors.red),
          child: PageView.builder(
            controller: _pageController,
            itemCount: 5,
            itemBuilder: (BuildContext context, int position) {
              return _buildPageItem(position);
            },
          ),
        ),
        // DotsIndicator(
        //   dotsCount: 5,
        //   position: currentPageitem,
        //   decorator: DotsDecorator(
        //       size: Size.square(9.0),
        //       activeSize: Size(18, 9),
        //       activeShape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(5))),
        // )
        SizedBox(
          height: Dimensions.height30,
        ),

        // ° S E C O N D   S E C T I O N   ( L I S T V I E W ) °

        // Text
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"),
              SizedBox(
                width: Dimensions.width10,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 3),
                child: BigText(
                  text: ".",
                  color: greyTextColor,
                ),
              ),
              SizedBox(
                width: Dimensions.width10,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 3),
                child: SmallText(
                  text: "Food pairing",
                  color: greyTextColor,
                ),
              ),
            ],
          ),
        ),

        // ( L I S T V I E W )
        SizedBox(
          height: Dimensions.height20,
        ),

        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                bottom: Dimensions.height10),
            child: Row(
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/food01.jpg"))),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Dimensions.radius20),
                          bottomRight: Radius.circular(Dimensions.radius20)),
                    ),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: Dimensions.width10,
                            right: Dimensions.width10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(text: "Chinese Side"),
                            SmallText(text: "Chinese food service "),
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
                                    text: "32min",
                                    icon: Icons.timer_sharp,
                                    iconColor: Colors.red),
                              ],
                            )
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildPageItem(int position) {
    Matrix4 matrix = Matrix4.identity();
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          // F O O D   I M A G E
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                color: primarycolor,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("assets/food01.jpg")),
                borderRadius:
                    BorderRadiusDirectional.circular(Dimensions.radius20)),
          ),
          // C A R D
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.height15,
                  top: 25,
                  right: Dimensions.height15),
              height: Dimensions.pageTextViewContainer,
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius:
                      BorderRadiusDirectional.circular(Dimensions.radius20)),
              child: Column(
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
                          text: "32min",
                          icon: Icons.timer_sharp,
                          iconColor: Colors.red),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
