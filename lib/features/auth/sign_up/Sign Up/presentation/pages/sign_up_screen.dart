import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_med/common/widgets/agree_to_privacy.dart';
import 'package:online_med/common/widgets/app_bar_title.dart';
import 'package:online_med/common/widgets/back_button.dart';
import 'package:online_med/common/widgets/custom_green_button.dart';
import 'package:online_med/common/widgets/custom_password_textfield.dart';
import 'package:online_med/common/widgets/custom_textfield.dart';
import 'package:online_med/common/widgets/cutom_alert_dialog.dart';
import 'package:online_med/features/auth/sign_in/Login/presentation/pages/login_screen.dart';
import 'package:online_med/features/auth/sign_up/Sign%20Up/presentation/bloc/signup_bloc.dart';
import 'package:online_med/features/onboarding/presentation/widgets/sign_up_button.dart';

import '../widgets/dont_have_account.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _userTextEditingController = TextEditingController();
  final TextEditingController _emailTextEditingController = TextEditingController();
  final TextEditingController _passwordTextEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final bool agree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const CustomBackButton(), centerTitle: true,title: const AppBarTitle(title: "Sign Up"),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: BlocConsumer<SignUpBloc, SignUpState>(
          listener: (context, state) {
            if(state is SignUpSuccessState){
              showDialog(context: context, builder: (context) => CustomAlertDialog(title: "Success", subtitle: "Your account has been successfully registered", buttonTitle: "Login", onTab: () => Navigator.of(context).push(CupertinoPageRoute(builder: (context) => LoginScreen())), cancelButton: false, image: "assets/images/Icon/Vector.png"));
            }
          },
          builder: (context, state) {
          return Form(
          key: _formKey,
          child: ListView(
            children: [
              const SizedBox(height: 44),
              CustomTextField(icon: "assets/images/Icon/User-Outline.png", textEditingController: _userTextEditingController, hintText: "Enter your name"),
              const SizedBox(height: 16),
              CustomTextField(icon: "assets/images/Icon/Email.png", textEditingController: _emailTextEditingController, hintText: "Enter your email"),
              const SizedBox(height: 16),
              CustomPasswordTextField(icon: "assets/images/Icon/Password.png", textEditingController: _passwordTextEditingController, hintText: "Enter your password", error: false),
              const SizedBox(height: 16),
              AgreeToPrivacyPolicy(agree: agree,),
              const SizedBox(height: 36),
              CustomGreenButton(text: "Sign Up", onTap: (){
                if(_formKey.currentState!.validate()){
                  BlocProvider.of<SignUpBloc>(context).add(SignUpRequestEvent(name: _userTextEditingController.text, email: _emailTextEditingController.text, password: _passwordTextEditingController.text));
                }
              }),
              const SizedBox(height: 24),
              const DontHaveAccount(),
            ],
          ),
        );
  },
),
      ),
    );
  }
}
