import 'package:flutter/material.dart';
import 'package:online_med/common/colors/app_color.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(color: AppColors.black, fontSize: 18, fontWeight: FontWeight.w600, fontFamily: "Inter"),);
  }
}
