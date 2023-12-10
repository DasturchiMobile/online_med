import 'package:flutter/material.dart';
import 'package:online_med/common/colors/app_color.dart';
import 'package:online_med/common/widgets/app_bar_title.dart';
import 'package:online_med/common/widgets/back_button.dart';
import 'package:online_med/common/widgets/custom_green_button.dart';
import 'package:online_med/common/widgets/custom_password_textfield.dart';
import 'package:online_med/features/auth/sign_in/Login/presentation/widgets/forgot_password_text.dart';

import '../../../../../../common/widgets/custom_textfield.dart';
import '../../../../../../common/widgets/signup_textbutton.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(leading: const CustomBackButton(),centerTitle: true,title: const AppBarTitle(title: "Login"),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 24,),
            CustomTextField(icon: 'assets/images/icon/Email.png', textEditingController: _emailController, hintText: "Enter your email"),
            const SizedBox(height: 16),
            CustomPasswordTextField(icon: 'assets/images/icon/Password.png', textEditingController: _passwordController, hintText: "Enter your password"),
            const SizedBox(height: 8,),
            const ForgotPasswordText(text: "Forgot Password?"),
            const SizedBox(height: 32,),
            CustomGreenButton(text: "Login", onTap: (){}),
            const SizedBox(height: 32,),
            SignUpTextButton()
          ],
        ),
      ),
    );
  }
}
