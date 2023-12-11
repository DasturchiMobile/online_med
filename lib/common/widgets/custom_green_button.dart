import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_med/common/colors/app_color.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../features/auth/sign_in/Login/presentation/bloc/login_bloc.dart';

class CustomGreenButton extends StatelessWidget {
  const CustomGreenButton({super.key, required this.text, required this.onTap});
  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () => onTap(),
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: AppColors.green,
        ),
        alignment: Alignment.center,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Center(child: Text(text, style: TextStyle(color: AppColors.white,fontWeight: FontWeight.w600, fontSize: 16,), textAlign: TextAlign.center,)),
            ),
          ],
        ),
      ),
    );
  }
}
