import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lovin/app/util/colors.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(text: "Hai, ", children: [
            TextSpan(
              text: "Mahesa Anugrah",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ]),
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: color.red,
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 250,
              width: Get.width,
              color: color.red,
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            width: Get.width,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    blurStyle: BlurStyle.outer),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      servis(title: "Transfer"),
                      servis(title: "Transfer"),
                      servis(title: "Transfer"),
                      servis(title: "Transfer"),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      servis(title: "Transfer"),
                      servis(title: "Transfer"),
                      servis(title: "Transfer"),
                      servis(title: "Transfer"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class servis extends StatelessWidget {
  String? title;
  servis({this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.red,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text("$title")
      ],
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 60);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
