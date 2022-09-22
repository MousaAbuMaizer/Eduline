import 'package:flutter/material.dart';
import 'package:online_courses_application/screens/ForgotPass/components/Body.dart';

import '../../size_config.dart';


class ForgotPass extends StatelessWidget {
  static String routeName = "/ForgotPass";
  const ForgotPass({Key? key}) : super(key: key);

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
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xffd27777),
                Color(0xffe5b0b0),
                Color(0xfff6b26b),
                Color(0xffffc992),
                Color(0xfff7bf83),
              ],
            )
        ),
        child: const Body(),
      ),
    );
  }
}
