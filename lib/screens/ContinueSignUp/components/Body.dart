import 'package:flutter/material.dart';
import 'package:online_courses_application/screens/ContinueSignUp/components/DatePickerTextField.dart';
import 'package:online_courses_application/screens/ContinueSignUp/components/PhoneNumberTextField.dart';
import 'package:online_courses_application/screens/OTP/OTP.dart';

import '../../../components/BasicUseButton.dart';
import '../../../components/NormalTextField.dart';
import '../../../size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();

}

class _BodyState extends State<Body> {

  TextEditingController dateCtl = TextEditingController();

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
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.05,
                  ),
                  Text(
                    "Not so fast...",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(30),
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.02,
                  ),
                  Text(
                    "We need a bit more info before you account magically be created",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(17),
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              DatePickerTextField(dateCtl: dateCtl),
              SizedBox(
                height: SizeConfig.screenHeight * 0.03,
              ),
              const NormalTextField(
                text: "Your Country of Residence",
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.03,
              ),
              PhoneNumberTextField(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.07,
              ),
              BasicUseButton(
                text: 'One Last Step',
                press: () {Navigator.pushNamed(context, OTP.routeName);},
              )
            ],
          ),
        ),
      ),
    ));
  }
}



