import 'package:e_shopper/screen/cart_screen.dart';
import 'package:e_shopper/screen/detail_screen.dart';
import 'package:e_shopper/screen/home_screen.dart';
import 'package:e_shopper/utils/shack_animation1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "HandoSoft",
        ),
        home: HomeScreen());
  }
}
