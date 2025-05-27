import 'package:flutter/material.dart';
import 'package:login/Screen/home.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:login/gen/assets.gen.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: Adaptive.h(63),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 245, 98, 44),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(100),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 22,
                      right: 16,
                      left: 16,
                    ),
                    child: Image.asset(
                      Assets.images.chefLogin.path,
                      scale: 1.2,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Get your Food with\nyour phone",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "sand",
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 28,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Delicious, healthy, homemade",
                    style: TextStyle(
                      fontFamily: "sand",
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Container(
              height: Adaptive.h(7),
              width: Adaptive.w(75),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 227, 227, 227),
                borderRadius: BorderRadius.circular(24),
              ),
              child: TextButton(
                onPressed: () {
                  Get.to(() => Home());
                },
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  overlayColor: const Color.fromARGB(255, 245, 98, 44),
                ),
                child: Text(
                  "Login as a geust",
                  style: TextStyle(
                    fontFamily: "sand",
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromARGB(255, 124, 124, 124),
                  ),
                ),
              ),
            ),
            SizedBox(height: 14),
            Container(
              height: Adaptive.h(7),
              width: Adaptive.w(75),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 245, 98, 44),
                borderRadius: BorderRadius.circular(24),
              ),
              child: TextButton.icon(
                icon: Image.asset(Assets.icons.google.path),
                onPressed: () {},
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  overlayColor: const Color.fromARGB(255, 255, 255, 255),
                ),
                label: Text(
                  "Login with google",
                  style: TextStyle(
                    fontFamily: "sand",
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                text: "by using app you will agree our",
                style: TextStyle(
                  fontFamily: "sand",
                  fontSize: 16,
                  color: const Color.fromARGB(255, 124, 124, 124),
                  fontWeight: FontWeight.w300,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "\nPrivacy Policy",
                    style: TextStyle(
                      fontFamily: "sand",
                      fontSize: 16,
                      color: const Color.fromARGB(255, 124, 124, 124),
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
