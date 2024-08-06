import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:splash_screen/constants/colors.dart';
import 'package:splash_screen/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future navigateToHome() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  void initState() {
    navigateToHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    CustomColor _customColor = CustomColor();
    return Scaffold(
      backgroundColor: _customColor.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.flutter_dash,
              size: 100,
              color: _customColor.secondaryColor,
            ),
            Text(
              "SplashScreen",
              style:
                  TextStyle(fontSize: 40, color: _customColor.secondaryColor),
            ),
            CircularProgressIndicator(
              color: _customColor.secondaryColor,
            )
          ],
        ),
      ),
    );
  }
}
