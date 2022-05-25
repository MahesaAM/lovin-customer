import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lovin/app/routes/app_pages.dart';
import 'package:lovin/app/util/colors.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Container(
          width: 100,
          child: Image.asset('assets/logo/logo-color.png'),
        ),
        centerTitle: false,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              child: Icon(
                Icons.headset_mic,
                color: Colors.white,
              ),
              backgroundColor: color.red,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              child: Image.asset('assets/images/login-image.png'),
            ),
            Text(
              "Selamat datang di aplikasi Lovin, anda bisa melakukan semua transaksi melalui aplikasi Lovin",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            // TextField(
            //   autocorrect: false,
            //   keyboardType: TextInputType.phone,
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(50),
            //     ),
            //     hintText: "Cth. 081324568xxx",
            //   ),
            // ),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed(Routes.HOME);
              },
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                  primary: color.red,
                  fixedSize: Size(150, 50),
                  shape: StadiumBorder()),
            ),
            Row(children: []),
          ],
        ),
      ),
    );
  }
}
