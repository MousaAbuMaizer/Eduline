import 'package:flutter/material.dart';
import 'package:online_courses_application/MainAppScreens/MainBody.dart';

import '../../../components/BasicUseButton.dart';
import '../../../components/EmailTextField.dart';
import '../../../components/PasswordTextField.dart';
import '../../../size_config.dart';
import '../../ForgotPass/ForgotPass.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool remember = false;

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
            children: [
              Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.05,
                  ),
                  Text(
                    "Hey there :D",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(30),
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.02,
                  ),
                  Text(
                    "Put your info bellow to access your stuff",
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
              const EmailTextField(
                text: "Your beautiful Email... Just like you",
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.03,
              ),
              const PasswordTextField(
                text: "Pass the word... get it?",
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.06,
              ),
              Row(
                children: [
                  Checkbox(
                    value: remember,
                    activeColor: Colors.white,
                    checkColor: Colors.grey,
                    onChanged: (value) {
                      setState(() {
                        remember = value!;
                      });
                    },
                  ),
                  Text(
                    "Remember You?",
                    style: TextStyle(color: Colors.white,fontSize: getProportionateScreenWidth(14),fontWeight: FontWeight.w700),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, ForgotPass.routeName);
                    },
                    child: Text(
                      "Forgot your Pass?",
                      style: TextStyle(color: Colors.white,fontSize: getProportionateScreenWidth(14),fontWeight: FontWeight.w700),
                      //style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.06,
              ),
              BasicUseButton(
                text: 'Get Me In',
                press: () {Navigator.pushNamed(context, MainBody.routeName);},
              )
            ],
          ),
        ),
      ),
    ));
  }
}
