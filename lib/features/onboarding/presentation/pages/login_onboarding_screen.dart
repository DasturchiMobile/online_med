import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_med/common/widgets/custom_green_button.dart';
import 'package:online_med/features/auth/sign_up/Sign%20Up/presentation/pages/sign_up_screen.dart';
import 'package:online_med/features/onboarding/presentation/widgets/sign_up_button.dart';

import '../../../auth/sign_in/Login/presentation/pages/login_screen.dart';

class LoginOnBoardingScreen extends StatelessWidget {
  const LoginOnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: ListView(
            children: [
              const SizedBox(height: 169,),
              Image.asset('assets/images/logo.png', color: const Color(0xFF199A8E), width: 66,height: 66,),
              const Text("Medics", style: TextStyle(fontFamily: "Montserrat", fontSize: 25.6, fontWeight: FontWeight.w700, color: Color(0xFF199A8E)),textAlign: TextAlign.center,),
              const SizedBox(height: 40),
              const Text("Let’s get started!", style: TextStyle(fontSize: 22, fontFamily: "Inter", fontWeight: FontWeight.w700),textAlign: TextAlign.center,),
              const SizedBox(height: 9),
              const Text("Login to enjoy the features we’ve provided, and stay healthy!", style: TextStyle(color: Color(0xFF717784), fontSize: 16, fontFamily: "Inter", fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
              const SizedBox(height: 60),
              CustomGreenButton(text: "Login", onTap: (){
                Navigator.of(context).push(CupertinoPageRoute(builder: (context) =>  LoginScreen()));
              }),
              const SizedBox(height: 16),
              SignUpButton(text: "Sign Up", onTap: (){
                Navigator.of(context).push(CupertinoPageRoute(builder: (context) => const SignUpScreen()));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
