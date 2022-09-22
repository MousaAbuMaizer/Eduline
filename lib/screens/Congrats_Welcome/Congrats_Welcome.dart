import 'package:flutter/material.dart';
import 'package:online_courses_application/screens/Congrats_Welcome/components/Body.dart';

import '../../size_config.dart';


class Congrats_Welcome extends StatelessWidget {
  static String routeName = "/Congrats_Welcome";
  const Congrats_Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topLeft,
              colors: [
                Color(0xffd27777),
                //Color(0xfff6b26b),
                Color(0xffffc992),
                Color(0xffe5b0b0),
                Color(0xfff7bf83),
              ],
            )
        ),
        child: const Body(),
      ),
    );
  }
}
