
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_med/common/colors/app_color.dart';

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        InkWell(onTap: (){
          Navigator.of(context).push(CupertinoPageRoute(builder: (context) => const Scaffold()));
        }, child: Text(text, style: TextStyle(color: AppColors.green, fontSize: 14, fontFamily: "Inter", fontWeight: FontWeight.w500))),
      ],
    );
  }
}
