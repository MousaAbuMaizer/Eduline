import 'package:flutter/material.dart';
import 'package:online_courses_application/screens/SignIn2/components/Body.dart';

import '../../size_config.dart';

class SignIn2 extends StatelessWidget {
  static String routeName = "/SignIn2";

  const SignIn2({Key? key}) : super(key: key);

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
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: [
            Color(0xffd27777),
            Color(0xffe5b0b0),
            Color(0xfff6b26b),
            Color(0xffffc992),
            Color(0xfff7bf83),
          ],
        )),
        child: Body(),
      ),
    );
  }
}
