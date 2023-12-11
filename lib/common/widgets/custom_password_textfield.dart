import 'package:flutter/material.dart';
import 'package:online_med/common/colors/app_color.dart';

class CustomPasswordTextField extends StatefulWidget {
  const CustomPasswordTextField({super.key, required this.icon,required this.textEditingController, required this.hintText, required this.error});
  final String icon;
  final String hintText;
  final TextEditingController textEditingController;
  final bool error;
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
      decoration: widget.error ? error(): success(),
    );
  }

  border() => OutlineInputBorder(
    borderRadius: BorderRadius.circular(24),
    borderSide: const BorderSide(width: 1, color: Color(0xFFE5E7EB)),
  );
  success() => InputDecoration(
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
      },icon: const ImageIcon(AssetImage('assets/images/Icon/Eye Slash.png')),),
    ),
    filled: true,
    fillColor: const Color(0xFFF9FAFB),
    border: border(),
    focusedBorder: border(),
    enabledBorder: border(),
  );
  error() => InputDecoration(
    errorText: "*The password you entered is wrong",
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
      },icon: const ImageIcon(AssetImage('assets/images/Icon/Eye Slash.png')),),
    ),
    filled: true,
    fillColor: const Color(0xFFF9FAFB),
    border: border(),
    focusedBorder: border(),
    enabledBorder: border(),
  );
}
