import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:login/Screen/categories.dart';
import 'package:login/Screen/home.dart';
import 'package:login/Screen/profile.dart';
import 'package:login/Screen/shopping.dart';
import 'package:sizer/sizer.dart';

var _correntIndex = 0;
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Sizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: _body(),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: const Color.fromARGB(255, 245, 98, 44),
              currentIndex: _correntIndex,
              selectedItemColor: const Color.fromARGB(255, 245, 98, 44),
              unselectedItemColor: const Color.fromARGB(136, 22, 22, 22),
              onTap: (value) {
                setState(() {
                  _correntIndex = value;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.house),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.basketShopping),
                  label: "shopping",
                ),
                BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.listUl),
                  label: "Categories",
                ),
                BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.user),
                  label: "profile",
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _body() {
    switch (_correntIndex) {
      case 0:
        return Home();
      case 1:
        return Shopping();
      case 2:
        return Categories();
      case 3:
        return Profile();
      default:
        return SizedBox.shrink();
    }
  }
}
