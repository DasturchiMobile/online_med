import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_med/features/onboarding/presentation/pages/onboading_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        CupertinoPageRoute(builder: (context) => const OnBoardingScreen()), // Keyingi sahifa
      );
    });
  }


  @override
  Widget build(BuildContext context)  {

    return Scaffold(
      backgroundColor: const Color(0xFF199A8E),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: 130,
            ),
            const Text(
              "Medics",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Montserrat",
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
