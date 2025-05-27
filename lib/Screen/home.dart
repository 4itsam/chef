import 'package:flutter/material.dart';
import 'package:login/components/appbarCard.dart';
import 'package:login/components/categoriesWidget.dart';
import 'package:login/gen/assets.gen.dart';
import 'package:sizer/sizer.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppbarCard(),
      body: Column(
        children: [
          categoriesTextHeadLine(),
          Categorieswidget(),


        ],
      ),
    );
  }

  Padding categoriesTextHeadLine() {
    return Padding(
          padding: const EdgeInsets.only(
            top: 40,
            right: 22,
            left: 22,
            bottom: 20,
          ),
          child: Row(
            children: [
              Text(
                "Categories",
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
            ],
          ),
        );
  }
}
