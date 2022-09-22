import 'package:flutter/material.dart';
import 'package:online_courses_application/screens/Congrats_Welcome/Congrats_Welcome.dart';
import 'package:online_courses_application/screens/OTP/components/ButtonWithTimer.dart';
import 'package:online_courses_application/screens/OTP/components/TextFieldWithLimit.dart';

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
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.03,
                  ),
                  Text(
                    "One last step indeed :)",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(30),
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.02,
                  ),
                  Text(
                    "Just making sure that you are a human not an artificially created mastermind planning to RULE OVER THE WORLD!!!",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(17),
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              TextFieldWithLimit(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              BasicUseButton(
                  text: "I'm indeed a human",
                  press: () {
                    Navigator.pushNamed(context, Congrats_Welcome.routeName);
                  }),
              SizedBox(
                height: SizeConfig.screenHeight * 0.12,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: getProportionateScreenWidth(60),
                        right: getProportionateScreenWidth(60)),
                    child: Text(
                      "Haven't received a code yet?",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: getProportionateScreenWidth(15),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.03,
                  ),
                  ButtonWithTimer()
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}



