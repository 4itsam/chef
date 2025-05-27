import 'package:flutter/material.dart';
import 'package:login/Screen/login.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Sizer( 
  builder: (context, orientation, screenType) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: true,
      home: Login(),
    );
  },
);
  }
}
