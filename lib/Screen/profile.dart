import 'package:flutter/material.dart';
import 'package:login/gen/assets.gen.dart';
import 'package:sizer/sizer.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Adaptive.px(388),
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 245, 98, 44),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(55)),

              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(69, 0, 0, 0),
                  blurRadius: 8,
                  blurStyle: BlurStyle.normal,
                  offset: Offset(0, 2),
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(height: 100),
                Container(
                  height: Adaptive.px(124),
                  width: Adaptive.px(124),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage(Assets.icons.userProfile.path),
                      fit: BoxFit.fill,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(90, 0, 0, 0),
                        blurRadius: 8,
                        blurStyle: BlurStyle.normal,
                        offset: Offset(0, 2),
                        spreadRadius: 1,
                      ),
                      BoxShadow(
                        color: const Color.fromARGB(255, 230, 230, 230),
                        blurRadius: 0,
                        blurStyle: BlurStyle.outer,
                        offset: Offset(0, 0),
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Ali Miri",
                  style: TextStyle(
                    fontFamily: 'sand',
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "wwwalimiri60@gmail.com",
                  style: TextStyle(
                    fontFamily: "sand",
                    color: const Color.fromARGB(160, 255, 255, 255),
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: SizedBox(
                    height: Adaptive.px(36),
                    width: Adaptive.px(160),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(Assets.icons.crown.path),
                        SizedBox(width: 6),
                        Text(
                          "Get Premium",
                          style: TextStyle(
                            fontFamily: "sand",
                            color: const Color.fromARGB(255, 39, 39, 39),
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Profile & Settings",
                style: TextStyle(
                  fontFamily: "sand",
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
