// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/home/Screens/popularFood_detail_page.dart';
import 'package:food_app/home/main_food_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: Popularfooddetail(),
    );
  }
}
