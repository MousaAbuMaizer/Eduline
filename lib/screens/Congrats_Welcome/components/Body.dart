import 'package:flutter/material.dart';
import 'package:online_courses_application/MainAppScreens/MainBody.dart';
import '../../../components/BasicUseButton.dart';

import '../../../size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(300),
                width: double.infinity,
                child: Image.asset("assets/images/logo2.png"),
              ),
              Padding(
                padding:
                EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.08,
                        ),
                        Text(
                          "Welcome to the club :D",
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(30),
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.02,
                        ),
                        Text(
                          "Whether you're new or a returning explorer, we can't be more excited for your journey",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(17),
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.07,
                    ),
                    BasicUseButton(text: "Let's Go", press: () {Navigator.pushNamed(context, MainBody.routeName);})
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
