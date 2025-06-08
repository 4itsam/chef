import 'package:flutter/material.dart';
import 'package:login/gen/assets.gen.dart';
import 'package:sizer/sizer.dart';

class AppbarCard extends StatelessWidget implements PreferredSizeWidget {
  const AppbarCard({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      
      toolbarHeight: 146,
      backgroundColor: const Color.fromARGB(255, 245, 98, 44),
      automaticallyImplyLeading: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      title: Column(
        children: [
          Row(
            children: [
              Container(
                height: Adaptive.px(42),
                width: Adaptive.px(42),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: AssetImage(Assets.icons.userProfile.path),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello Ali!",
                    style: TextStyle(
                      fontFamily: "sand",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Check Amazing Recepes",
                    style: TextStyle(
                      fontFamily: "sand",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: Adaptive.px(42),
                    width: Adaptive.px(42),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: AssetImage(Assets.icons.ring.path),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: Adaptive.px(20)),
          Row(
            children: [
              Card(
                elevation: 0,
                color: Colors.white,
                child: SizedBox(
                  height: Adaptive.px(44),
                  width: Adaptive.px(310),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      prefixIcon: Image.asset(Assets.icons.search.path),
                      hintText: "search any mag",
                      hintStyle: TextStyle(
                        fontFamily: "sand",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Card(
                    color: Colors.white,
                    elevation: 0,
                    child: SizedBox(
                      height: Adaptive.px(44),
                      width: Adaptive.px(44),
                      child: Image.asset(Assets.icons.settings.path),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(146);
}
