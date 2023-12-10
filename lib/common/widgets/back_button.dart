import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_med/common/colors/app_color.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () => Navigator.of(context).pop(), icon: Icon(CupertinoIcons.back, color: AppColors.black,));
  }
}
