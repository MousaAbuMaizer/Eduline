import 'package:flutter/material.dart';
import 'package:online_courses_application/MainAppScreens/MainBody.dart';
import 'package:online_courses_application/screens/Congrats_Welcome/Congrats_Welcome.dart';
import 'package:online_courses_application/screens/ContinueSignUp/ContinueSignUp.dart';
import 'package:online_courses_application/screens/ForgotPass/ForgotPass.dart';
import 'package:online_courses_application/screens/OTP/OTP.dart';
import 'package:online_courses_application/screens/SignIn/SignIn.dart';
import 'package:online_courses_application/screens/SignIn2/SignIn2.dart';
import 'package:online_courses_application/screens/SignInWithEmail/SignInWithEmail.dart';
import 'package:online_courses_application/screens/SignUp/SignUp.dart';
import 'package:online_courses_application/screens/SignUpWithEmail/SignUpWithEmail.dart';
import 'package:online_courses_application/screens/SplashScreen/SplashScreen.dart';


final Map<String, WidgetBuilder> routs = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignIn.routeName: (context) => const SignIn(),
  SignIn2.routeName: (context) => const SignIn2(),
  SignInWithEmail.routeName: (context) => const SignInWithEmail(),
  SignUp.routeName: (context) => const SignUp(),
  SignUpWithEmail.routeName: (context) => const SignUpWithEmail(),
  ContinueSignUp.routeName: (context) => const ContinueSignUp(),
  OTP.routeName: (context) => const OTP(),
  Congrats_Welcome.routeName: (context) => const Congrats_Welcome(),
  ForgotPass.routeName: (context) => const ForgotPass(),
  MainBody.routeName: (context) => const MainBody(),
};