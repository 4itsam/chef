import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:login/Screen/login.dart';
import 'package:login/Screen/profile.dart';
import 'package:login/components/appbarCard.dart';
import 'package:login/components/bannerImage.dart';
import 'package:login/components/categoriesWidget.dart';
import 'package:login/components/topChefsWidget.dart';
import 'package:login/gen/assets.gen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class Home extends StatelessWidget {
  Home({super.key});
  var iconData = $AssetsIconsGen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCard(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            categoriesTextHeadLine(
              text: "Categories",
              navigate: "categories",
              topDistance: 50,
            ),
            Categorieswidget(),
            categoriesTextHeadLine(
              text: "Popular Recipes",
              navigate: "s",
              topDistance: 32,
            ),
            BannerImage(),
            categoriesTextHeadLine(
              text: "Top chefs",
              navigate: "s",
              topDistance: 20,
            ),
            Topchefswidget(),
          ],
        ),
      ),
      
    );
  }

  Padding categoriesTextHeadLine({
    required text,
    required navigate,
    required double topDistance,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        top: topDistance,
        right: 22,
        left: 22,
        bottom: 20,
      ),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(
              fontFamily: "sand",
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {
                  if (navigate == "categories") {
                    Get.to(() => Login());
                  }
                },
                child: Text(
                  "See All",
                  style: TextStyle(
                    fontFamily: "sand",
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 245, 98, 44),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
