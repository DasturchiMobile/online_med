import 'package:flutter/material.dart';
import 'package:online_med/common/colors/app_color.dart';
import 'package:online_med/common/widgets/custom_green_button.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({super.key, required this.title, required this.subtitle, required this.buttonTitle, required this.onTab, required this.cancelButton, required this.image});
  final String image;
  final String title;
  final String subtitle;
  final String buttonTitle;
  final Function onTab;
  final bool cancelButton;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.white,
      insetPadding: const EdgeInsets.symmetric(horizontal: 24),
      contentPadding: const EdgeInsets.all(32),
      content: Column(
        mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 102,
          alignment: Alignment.center,
          child: Container(
            height: 102,
            width: 102,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFF5F8FF),
            ),
            alignment: Alignment.center,
            child: Image(image: AssetImage(image),width: 56,),
          ),
        ),
        const SizedBox(height: 20,),
        Text(title, style: TextStyle(color: AppColors.black, fontFamily: "Inter", fontSize: 20, fontWeight: FontWeight.w700),textAlign: TextAlign.center,),
        const SizedBox(height: 8,),
        Text(subtitle, style: TextStyle(color: AppColors.greyText, fontFamily: "Inter", fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
        Padding(padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 45), child: CustomGreenButton(text: buttonTitle, onTap: (){onTab();}),),
      ],
      ),
    );
  }
}
