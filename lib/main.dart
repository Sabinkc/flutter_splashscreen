import 'package:flutter/material.dart';
import 'package:splash_screen/screens/home_screen.dart';
import 'package:splash_screen/screens/splash_screen.dart';

 void main(List<String> args) {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}