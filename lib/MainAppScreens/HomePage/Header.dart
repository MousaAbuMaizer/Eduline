import 'package:flutter/material.dart';
import 'package:online_courses_application/constants.dart';

import '../../size_config.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key, required this.text1, required this.text2, required this.press,
  }) : super(key: key);
  final String text1;
  final String text2;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.w700,
            color: darkMode==false? homeLightFontColor : homeDarkFontColor,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Row(
            children: [
              Text(
                text2,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  fontWeight: FontWeight.w700,
                  color: darkMode==false? Colors.grey : homeDarkFontColor,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: darkMode==false? Colors.grey : homeDarkFontColor,
                size: getProportionateScreenWidth(16),)
            ],
          ),
        )
      ],
    );
  }
}