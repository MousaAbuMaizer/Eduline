import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class SignInUp extends StatelessWidget {
  const SignInUp({
    Key? key, required this.press, required this.icon, required this.text,
  }) : super(key: key);

  final VoidCallback press;
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(55),
      child: TextButton(
        onPressed: press,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shadowColor: MaterialStateProperty.all(Colors.black),
          elevation: MaterialStateProperty.all(0.5),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(icon),
              //const Spacer(),
              Text(text,
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(16),
                      fontWeight: FontWeight.bold,
                      color: Colors.black)
              ),
            ],
          ),
        ),
      ),
    );
  }
}