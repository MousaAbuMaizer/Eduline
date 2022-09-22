import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ButtonWithTimer extends StatefulWidget {
  const ButtonWithTimer({Key? key}) : super(key: key);

  @override
  State<ButtonWithTimer> createState() => _ButtonWithTimerState();
}

class _ButtonWithTimerState extends State<ButtonWithTimer> {
  bool countDownComplete = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(250),
      height: getProportionateScreenHeight(55),
      child: TextButton(
        onPressed: () {
          if (countDownComplete) {}
        },
        style: ButtonStyle(
          shape:
          MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          backgroundColor: countDownComplete == false
              ? MaterialStateProperty.all(Colors.grey)
              : MaterialStateProperty.all(Colors.black),
          shadowColor: MaterialStateProperty.all(Colors.black),
          elevation: MaterialStateProperty.all(0.5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Send a new one in ",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(16),
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            TweenAnimationBuilder(
              tween: Tween(begin: 15.0, end: 0.0),
              duration: Duration(seconds: 15),
              builder: (_, dynamic value, child) => Text(
                "${value.toInt()}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(16),
                    fontWeight: FontWeight.bold),
              ),
              onEnd: () {
                setState(() {
                  countDownComplete = true;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}