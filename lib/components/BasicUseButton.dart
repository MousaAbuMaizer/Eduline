import 'package:flutter/material.dart';
import '../size_config.dart';

class BasicUseButton extends StatelessWidget {
  const BasicUseButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(55),
      child: TextButton(
        onPressed: press,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
          backgroundColor: MaterialStateProperty.all(Colors.black),
          shadowColor: MaterialStateProperty.all(Colors.black),
          elevation: MaterialStateProperty.all(0.5),
        ),
        child: Text(text,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                fontWeight: FontWeight.bold,
                color: Colors.white)
        ),
      ),
    );
  }
}
