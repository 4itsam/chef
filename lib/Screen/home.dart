import 'package:flutter/material.dart';
import 'package:login/components/appbarCard.dart';
import 'package:login/components/bannerImage.dart';
import 'package:login/components/categoriesWidget.dart';
import 'package:login/gen/assets.gen.dart';
import 'package:sizer/sizer.dart';
import 'package:login/models/chefs.dart';

List<Chefs> chefs = [];
void getChefs() {
  chefs = Chefs.getChefs();
}

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getChefs();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCard(),
      body: Column(
        children: [
          categoriesTextHeadLine("Categories"),
          Categorieswidget(),
          categoriesTextHeadLine("Popular Recipes"),
          BannerImage(),
          categoriesTextHeadLine("Top chefs"),
          Container(
            height: Adaptive.px(114),
            width: double.infinity,

            child: ListView.separated(
              physics: AlwaysScrollableScrollPhysics(),
              itemCount: chefs.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:  EdgeInsets.only(left: index==0?20:0,right: index==chefs.length-1?12:0),
                  child: Column(
                      children: [
                        Container(
                          height: Adaptive.px(88),
                          width: Adaptive.px(88),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 223, 223, 223),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                chefs[index].image == null
                                    ? Assets.icons.emptyIcon.path
                                    : Assets.icons.feilledProfile.path,
                              ),
                              fit:
                                  chefs[index].image == null
                                      ? BoxFit.none
                                      : BoxFit.fill,
                            ),
                          ),
                        ),
                        Text(
                          chefs[index].name,
                          style: TextStyle(
                            fontFamily: "sand",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                );
                
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 16);
              },
            ),
          ),
        ],
      ),
    );
  }

  Padding categoriesTextHeadLine(text) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 22, left: 22, bottom: 20),
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
