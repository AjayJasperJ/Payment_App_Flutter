import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:neo_pay/OnBoardingScreens/onboarding_view.dart';
import 'package:neo_pay/main.dart';

class SplashView1 extends StatefulWidget {
  const SplashView1({super.key});

  @override
  State<SplashView1> createState() => _SplashView1State();
}

class _SplashView1State extends State<SplashView1> {
  @override
  void initState() {
    super.initState();
    switchtoscreen();
  }

  switchtoscreen() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OnboardingView1()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ZoomIn(
          delay: Duration(milliseconds: 1500),
          child: Center(
            child: Image.asset(
              "assets/images/logo.png",
              height: displaysize.height * .075,
            ),
          ),
        ),
      ),
    );
  }
}
