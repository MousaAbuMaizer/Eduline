import 'package:flutter/material.dart';
import 'package:online_courses_application/routes.dart';
import 'package:online_courses_application/screens/SignIn/SignIn.dart';
import 'package:online_courses_application/screens/SplashScreen/SplashScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Courses Application',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Source Sans Pro",
        appBarTheme: const AppBarTheme(
            color: Colors.transparent,
            brightness: Brightness.light,
            iconTheme: IconThemeData(color: Colors.black),
            elevation: 0,
            titleTextStyle: TextStyle(color: Colors.grey, fontSize: 20, )
        ),
        textTheme: const TextTheme(
            bodyText1: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.black)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: const SignIn(),    //if you want to remove splash screen just remove the comment from this line and line 37 + put a comment on line 36 and 38
      home: const SplashScreen(),
      //initialRoute: SignIn.routeName,
      initialRoute: SplashScreen.routeName,
      routes: routs,
    );
  }
}
