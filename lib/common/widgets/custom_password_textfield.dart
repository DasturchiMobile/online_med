import 'package:flutter/material.dart';
import 'package:online_med/common/colors/app_color.dart';

class CustomPasswordTextField extends StatefulWidget {
  const CustomPasswordTextField({super.key, required this.icon,required this.textEditingController, required this.hintText});
  final String icon;
  final String hintText;
  final TextEditingController textEditingController;
  @override
  State<CustomPasswordTextField> createState() => _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool isVisit = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value){
        widget.textEditingController.text = value;
      },
      obscureText: isVisit,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Color(0xFFA1A8B0), fontSize: 16,fontFamily: "Inter", fontWeight: FontWeight.w400),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 24, right: 16),
          child: ImageIcon(AssetImage(widget.icon), color: AppColors.grey,),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: IconButton(onPressed: (){
            setState(() {
              isVisit = !isVisit;
            });
          },icon: const ImageIcon(AssetImage('assets/images/icon/Eye Slash.png')),),
        ),
        filled: true,
        fillColor: const Color(0xFFF9FAFB),
        border: border(),
        focusedBorder: border(),
        enabledBorder: border(),
      ),
    );
  }

  border() => OutlineInputBorder(
    borderRadius: BorderRadius.circular(24),
    borderSide: const BorderSide(width: 1, color: Color(0xFFE5E7EB)),
  );
}
