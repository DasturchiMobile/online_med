import 'package:flutter/material.dart';
import 'package:online_med/common/colors/app_color.dart';

class CustomGreenButton extends StatelessWidget {
  const CustomGreenButton({super.key, required this.text, required this.onTap});
  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: InkWell(
              onTap: () => onTap(),
              borderRadius: BorderRadius.circular(32),
              child: Center(child: Text(text, style: TextStyle(color: AppColors.white,fontWeight: FontWeight.w600, fontSize: 16,), textAlign: TextAlign.center,)),
            ),
          ),
        ],
      ),
    );
  }
}
