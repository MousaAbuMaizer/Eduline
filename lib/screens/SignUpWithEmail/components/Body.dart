import 'package:flutter/material.dart';
import 'package:online_courses_application/screens/ContinueSignUp/ContinueSignUp.dart';

import '../../../components/BasicUseButton.dart';
import '../../../components/NormalTextField.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

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
                    height: SizeConfig.screenHeight * 0.03,
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
                    "Put your info bellow so we could create you a beautiful account",
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
              const NormalTextField(
                text: "Your lovely Name",
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.03,
              ),
              const NormalTextField(
                text: "Your lovely Email",
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.06,
              ),
              const NormalTextField(
                text: "A lovely Password to go with them",
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.03,
              ),
              const NormalTextField(
                text: "A lovely Password... again",
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.07,
              ),
              BasicUseButton(text: 'Make Me An Account', press: () {Navigator.pushNamed(context, ContinueSignUp.routeName);})
            ],
          ),
        ),
      ),
    ));
  }
}
