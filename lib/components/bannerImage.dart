import 'package:flutter/material.dart';
import 'package:login/gen/assets.gen.dart';
import 'package:sizer/sizer.dart';

class BannerImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: Adaptive.px(200),
      width: Adaptive.px(368),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(Assets.images.food.path)),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [RatedSection(), hotIcon()],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: Adaptive.px(72),
              width: Adaptive.px(368),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 238, 238, 238),
                backgroundBlendMode: BlendMode.srcOver,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8, right: 20, left: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "seazear Persian Pasta",
                          style: TextStyle(
                            fontFamily: "sand",
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        Card(
                          elevation: 0,
                          shape: BeveledRectangleBorder(
                            side: BorderSide(
                              width: 0.8,
                              color: const Color.fromARGB(255, 24, 145, 0),
                            ),
                          ),
                          child: SizedBox(
                            height: Adaptive.px(16),
                            width: Adaptive.px(16),
                            child: Card(
                              color: const Color.fromARGB(255, 24, 145, 0),
                              elevation: 0,
                              shape: CircleBorder(),
                              child: SizedBox(
                                height: Adaptive.px(6),
                                width: Adaptive.px(6),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 2),
                    child: Row(
                      children: [
                        Image.asset(Assets.icons.timer.path),
                        Text(
                          " 35 min . Easy . By Ali Miri",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: const Color.fromARGB(255, 22, 22, 22),
                          ),
                        ),
                      ],
                    ),
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







  Card hotIcon() {
    return Card(
      color: const Color.fromARGB(255, 252, 252, 252),
      shape: CircleBorder(),
      child: SizedBox(
        height: Adaptive.px(32),
        width: Adaptive.px(32),
        child: Image.asset(Assets.icons.fire.path),
      ),
    );
  }

  Card RatedSection() {
    return Card(
      elevation: 0,
      color: const Color.fromARGB(255, 247, 247, 247),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: SizedBox(
        height: Adaptive.px(24),
        width: Adaptive.px(116),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(Assets.icons.star.path),
            Text(
              "4.8(1k+ review)",
              style: TextStyle(
                fontFamily: "sand",
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }