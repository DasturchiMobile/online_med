import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_med/common/colors/app_color.dart';
import 'package:online_med/features/auth/sign_up/Sign%20Up/presentation/pages/sign_up_screen.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Do have an account? ",style: style(AppColors.greyText),),
        InkWell(onTap: () => Navigator.of(context).push(CupertinoPageRoute(builder: (context) => const SignUpScreen())),child: Text("Login",style: style(AppColors.green),)),
      ],
    );
  }
  style(Color color) => TextStyle(fontWeight: FontWeight.w400, fontSize: 15, color: color, fontFamily: "Inter");
}
