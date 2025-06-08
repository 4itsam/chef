import 'package:flutter/material.dart';
import 'package:login/gen/assets.gen.dart';
import 'package:login/models/chefs.dart';
import 'package:sizer/sizer.dart';

List<Chefs> chefs = [];
void getChefs() {
  chefs = Chefs.getChefs();
}

class Topchefswidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    getChefs();
    return SizedBox(
      height: Adaptive.px(114),
      width: double.infinity,

      child: ListView.separated(
        physics: AlwaysScrollableScrollPhysics(),
        itemCount: chefs.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 20 : 0,
              right: index == chefs.length - 1 ? 12 : 0,
            ),
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
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(36, 0, 0, 0),
                        blurRadius: 8,
                        blurStyle: BlurStyle.normal,
                        offset: Offset(0, 2),
                      ),
                    ],
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
    );
  }
}
