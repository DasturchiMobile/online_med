import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:online_med/common/colors/app_color.dart';

class AgreeToPrivacyPolicy extends StatefulWidget {
  AgreeToPrivacyPolicy({super.key, required this.agree});
  bool agree;
  @override
  State<AgreeToPrivacyPolicy> createState() => _AgreeToPrivacyPolicyState();
}

class _AgreeToPrivacyPolicyState extends State<AgreeToPrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        InkWell(
          onTap: (){
            setState(() {
            widget.agree =!widget.agree;
            });
          },
          borderRadius: BorderRadius.circular(8),
          child: Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: AppColors.borderGrey),
              borderRadius: BorderRadius.circular(8),
            ),
            alignment: Alignment.center,
            child: widget.agree?Image.asset("assets/images/Icon/Vector.png", width: 16,):const SizedBox(),
          ),
        ),
          const SizedBox(width: 16,),
        Wrap(
          children: [
            Text("I agree to the medidoc ",style: style(AppColors.grey)),
            Text("Terms of Service ",style: style(AppColors.green)),
            Text("and ",style: style(AppColors.grey)),
            Text("Privacy Policy",style: style(AppColors.green)),
          ],
        ),
      ],
    );
  }
  style (Color color) => TextStyle(color: color, fontWeight: FontWeight.w400, fontSize: 13,fontFamily: "Inter");
}
