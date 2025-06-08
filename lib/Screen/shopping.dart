import 'package:flutter/material.dart';
import 'package:login/gen/assets.gen.dart';

class Shopping extends StatefulWidget {
  
  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Assets.images.empty.path, scale: 2),
              Text(
                "Nothing selected yet!",
                style: TextStyle(
                  fontFamily: "sand",
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),


      ),
    );
  }
}
