import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:online_courses_application/components/BasicUseButton.dart';
import 'package:online_courses_application/screens/SignIn/SignIn.dart';

import '../../../size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final splashImages = [
    "assets/images/Splash2.png",
    "assets/images/Splash8.png",
    "assets/images/Splash9.png"
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.08,
                    ),
                    Text(
                      "Welcome to Eduline",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(30),
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.02,
                    ),
                    Text(
                      "Your tool to explore your knowledge and improve upon your skills!",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.06,
                ),
                CarouselSlider.builder(
                    itemCount: splashImages.length,
                    itemBuilder: (context,index,realIndex){
                      final splashImage = splashImages[index];
                      return buildImage(splashImage,index);
                    },
                    options: CarouselOptions(
                        height: getProportionateScreenHeight(300),
                        onPageChanged: (index, reason)=> setState(
                                ()=>activeIndex = index
                        ),
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 2),
                    )
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                BasicUseButton(text: "Let's Go", press: (){Navigator.pushNamed(context, SignIn.routeName);})
              ],
            ),
          ),
        )
    );
  }

  Widget buildImage(String splashImage, int index) => Container(
    margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
    color: Colors.transparent,
    child: Image.asset(
      splashImage,
      fit: BoxFit.cover,
    ),

  );
}
