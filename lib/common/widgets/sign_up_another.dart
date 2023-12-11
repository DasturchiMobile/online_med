import 'package:flutter/material.dart';
import 'package:online_med/common/colors/app_color.dart';

class SignUpAnother extends StatelessWidget {
  const SignUpAnother({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Container(height: 1,decoration: BoxDecoration(color: const Color(0xFFE5E7EB), borderRadius: BorderRadius.circular(2)),)),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 16), child: Text("OR", style: TextStyle(color: AppColors.grey, fontSize: 15, fontFamily: "SF Pro Display"),),),
              Expanded(child: Container(height: 1,decoration: BoxDecoration(color: const Color(0xFFE5E7EB), borderRadius: BorderRadius.circular(2)),)),
            ],
          ),
          const SizedBox(height: 27,),
          button(text: 'Sign in with Google', onTab: (){}, icon: 'assets/images/Icon/Google.png'),
          const SizedBox(height: 16,),
          button(text: 'Sign in with Apple', onTab: (){}, icon: 'assets/images/Icon/Apple.png'),
          const SizedBox(height: 16,),
          button(text: 'Sign in with Facebook', onTab: (){}, icon: 'assets/images/Icon/Facebook.png'),

        ],
      ),
    );
  }
  button({required String text,required Function onTab, required String icon})=> Container(
    height: 56,
    decoration: BoxDecoration(
      border: Border.all(width: 1, color: const Color(0xFFE5E7EB)),
      borderRadius: BorderRadius.circular(32)),
    child: Stack(children: [
        InkWell(borderRadius: BorderRadius.circular(32),onTap: () => onTab(),child: Center(child: Text(text, style: TextStyle(color: AppColors.black, fontSize: 16,fontWeight: FontWeight.w600, fontFamily: "Inter"),),)),
        Positioned(left: 18,top:18,child: Image(image: AssetImage(icon),width: 20)),
      ],),);
}
