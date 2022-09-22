import 'package:flutter/material.dart';
import 'package:online_courses_application/screens/SignIn2/SignIn2.dart';

import '../../../components/SignInUpButton.dart';
import '../../../size_config.dart';
import '../../SignUpWithEmail/SignUpWithEmail.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.04,
                    ),
                    Text(
                      "Guess your New :O",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(30),
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.02,
                    ),
                    Text(
                      "Use any of these methods to sign up",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(17),
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                SignInUp(
                  press: () {Navigator.pushNamed(context, SignUpWithEmail.routeName);},
                  icon: "assets/icons/iconmonstr-email-2.svg",
                  text: "Sign Up With Email",
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.03,
                ),
                SignInUp(
                  press: () {},
                  icon: "assets/icons/iconmonstr-facebook-1.svg",
                  text: "Sign Up With Facebook",
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.03,
                ),
                SignInUp(
                  press: () {},
                  icon: "assets/icons/iconmonstr-google-plus-1.svg",
                  text: "Sign Up With Google",
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        "Remembered your account? ",
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(15),
                            color: Colors.white,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, SignIn2.routeName);
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(15),
                              color: Colors.black,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.1,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
                      child: Column(
                          children: [
                        Text(
                          "By using our services you agree to give us 50% of your whole life savings. Joking, its some boring",
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(12),
                              color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "terms and conditions",
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(12),
                                color: Colors.white,
                                decoration: TextDecoration.underline

                            ),
                          ),
                        ),
                      ]),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
