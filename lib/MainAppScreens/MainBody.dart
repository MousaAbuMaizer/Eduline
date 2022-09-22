import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:online_courses_application/MainAppScreens/BookMarksPage/BookMarkPage.dart';
import 'package:online_courses_application/MainAppScreens/CoursesPage/CoursesPage.dart';
import 'package:online_courses_application/MainAppScreens/HomePage/HomePage.dart';
import 'package:online_courses_application/MainAppScreens/ProfilePage/ProfilePage.dart';
import 'package:online_courses_application/MainAppScreens/SearchPage/SearchPage.dart';
import 'package:online_courses_application/size_config.dart';

import '../constants.dart';


class MainBody extends StatefulWidget {
  static String routeName = "/MainBody";

  const MainBody({Key? key}) : super(key: key);

  @override
  State<MainBody> createState() => _MainBody();
}

class _MainBody extends State<MainBody> {
  int index = 0;
  final mainAppScreens= [
    HomePage(),
    SearchPage(),
    CoursesPage(),
    BookMarkPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(
        Icons.home_rounded,
        size: getProportionateScreenWidth(35),
      ),
      Icon(
        Icons.search_rounded,
        size: getProportionateScreenWidth(35),
      ),
      Icon(
        Icons.play_circle_outline_rounded,
        size: getProportionateScreenWidth(35),
      ),
      Icon(
        Icons.bookmark_rounded,
        size: getProportionateScreenWidth(35),
      ),
      Icon(
        Icons.person_rounded,
        size: getProportionateScreenWidth(35),
      ),
    ];

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(
                color: darkMode==false? navBarLightIconColor : navBarDarkIconColor
            )
        ),
        child: CurvedNavigationBar(

          animationDuration: Duration(milliseconds: 200),
          color: darkMode==false ? navBarLightColor : navBarDarkColor,
          backgroundColor: Colors.transparent,
          height: getProportionateScreenHeight(55),
          items: items,
          index: 0,
          onTap: (index) {
            setState(() {
              this.index = index;
            });
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: darkMode==false ? Color(0xFFefefef): Color(0xff191919)
        ),
        child: mainAppScreens[index],
      ),
    );
  }
}