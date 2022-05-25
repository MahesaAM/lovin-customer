import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lovin/app/util/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: color.red,
        body: Center(
          child: Container(
            width: Get.width * 0.3,
            height: Get.width * 0.3,
            child: Image.asset('assets/logo/logo.png'),
          ),
        ),
      ),
    );
  }
}
