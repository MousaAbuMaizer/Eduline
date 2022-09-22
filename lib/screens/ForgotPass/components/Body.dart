import 'package:flutter/material.dart';
import 'package:online_courses_application/screens/SignInWithEmail/SignInWithEmail.dart';

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
                        "Forgot thy Password?",
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(30),
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.02,
                      ),
                      Text(
                        "Just type in thy email and follow the instructions sent to thee",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(17),
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.2,
                  ),
                  TextFormField(
                    //textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                          left: getProportionateScreenWidth(55),
                          right: getProportionateScreenWidth(55)),
                      labelText: "Thy email mi lord/madam",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: getProportionateScreenWidth(17),
                        height: 1.4,
                      ),
                      hintText: "",
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.2,
                  ),
                  BasicUseButton(
                      text: "Send in the cavalry",
                      press: () {
                        Navigator.pushNamed(context, SignInWithEmail.routeName);
                      }),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.12,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}



