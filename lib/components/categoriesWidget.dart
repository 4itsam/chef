import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:login/models/categories.dart';

class Categorieswidget extends StatefulWidget {
  const Categorieswidget({super.key});

  @override
  State<Categorieswidget> createState() => _CategorieswidgetState();
}

class _CategorieswidgetState extends State<Categorieswidget> {
  List<Categories> categories = [];

  void getCategoris() {
    categories = Categories.getCategories();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCategoris();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: Adaptive.px(60),
      width: double.maxFinite,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 22 : 13),
            child: Container(
              width: Adaptive.px(130),
              height: Adaptive.px(50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: AssetImage(categories[index].image),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(18, 0, 0, 0),
                    blurRadius: 8,
                    offset: Offset(0, 2),
                    blurStyle: BlurStyle.normal,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  categories[index].text,
                  style: TextStyle(
                    fontFamily: "sand",
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: 3,
      ),
    );
  }
}
