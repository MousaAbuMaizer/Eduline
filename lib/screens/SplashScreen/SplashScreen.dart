import 'package:flutter/material.dart';
import 'package:online_courses_application/screens/SplashScreen/components/Body.dart';

import '../../size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/SplashScreen";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: [
              Color(0xffd27777),
              Color(0xfff6b26b),
              Color(0xffffc992),
              Color(0xfff7bf83),
            ],
          )),
          child: Body()),
    );
  }
}
