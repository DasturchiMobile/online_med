import 'package:flutter/material.dart';


class OnboardingText extends StatelessWidget {
  const OnboardingText({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: textStyle(),
    );
  }
  textStyle() => const TextStyle(
    color: Color(0xFF101623),
    fontFamily: "Inter",
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );
}
