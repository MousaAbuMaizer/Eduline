import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';
import 'package:fluttericon/iconic_icons.dart';

import 'Categories/Categories.dart';
import 'ContinueWatching/ContinueWatching.dart';
import 'FeaturedCourses/FeaturedCourses.dart';
import 'Header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.045,
                  ),
                  Row(
                    children: [
                      Text(
                        "Hello, Moses",
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(26),
                            fontWeight: FontWeight.w700,
                            color: darkMode == false
                                ? Color(0xfff6b26b)
                                : homeDarkFontColor),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(10),
                      ),
                      Image.asset(
                        darkMode == false
                            ? "assets/images/WavingHand.png"
                            : "assets/images/WavingHandLight.png",
                        height: getProportionateScreenHeight(30),
                        width: getProportionateScreenWidth(30),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(115),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (darkMode == false)
                              darkMode = true;
                            else
                              darkMode = false;
                          });
                        },
                        child: Icon(
                          darkMode == true ? Iconic.moon_inv : Iconic.moon,
                          size: getProportionateScreenWidth(25),
                          color: darkMode == true ? Colors.purple : Colors.grey,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.02,
                  ),
                ],
              ),
            ),
            GestureDetector(
                onTap: () {},
                child: Image.asset(
                  darkMode == false
                      ? "assets/images/Latest Tech news.gif"
                      : "assets/images/Latest Tech news Dark.gif",
                  height: getProportionateScreenHeight(170),
                  width: double.infinity,
                )),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(15),
                  right: getProportionateScreenWidth(15)),
              child: Column(
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Header(
                    text1: 'Featured',
                    text2: 'See All',
                    press: () {},
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: FeaturedCourses()),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  Header(
                    text1: 'Categories',
                    text2: 'See All',
                    press: () {},
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(17),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Categories(),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Header(
                    text1: 'Continue Watching',
                    text2: 'See All',
                    press: () {},
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: ContinueWatching()),
                  SizedBox(
                    height: getProportionateScreenHeight(25),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
