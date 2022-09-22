import 'package:flutter/material.dart';
import 'package:online_courses_application/screens/SignInWithEmail/SignInWithEmail.dart';
import 'package:online_courses_application/screens/SignUp/SignUp.dart';

import '../../../components/SignInUpButton.dart';
import '../../../size_config.dart';

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
            SizedBox(
              height: SizeConfig.screenHeight * 0.06,
            ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.05,
                ),
                Text(
                  "Welcome :)",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(30),
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.02,
                ),
                Text(
                  "Please use any of these methods to log in",
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
              press: () {Navigator.pushNamed(context, SignInWithEmail.routeName);},
              icon: "assets/icons/iconmonstr-email-2.svg",
              text: "Log In With Email",
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.03,
            ),
            SignInUp(
              press: () {},
              icon: "assets/icons/iconmonstr-facebook-1.svg",
              text: "Log In With Facebook",
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.03,
            ),
            SignInUp(
              press: () {},
              icon: "assets/icons/iconmonstr-google-plus-1.svg",
              text: "Log In With Google",
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.08,
            ),
            Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "First time around? ",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(15),
                        color: Colors.white,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, SignUp.routeName);
                    },
                    child: Text(
                      "Sign Up :)",
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
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "By using our services you agree to our  ",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(13),
                        color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "terms and conditions",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(13),
                        color: Colors.white,
                        decoration: TextDecoration.underline

                      ),
                    ),
                  ),
                ]),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
