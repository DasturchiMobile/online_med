import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_med/common/colors/app_color.dart';
import 'package:online_med/common/widgets/app_bar_title.dart';
import 'package:online_med/common/widgets/back_button.dart';
import 'package:online_med/common/widgets/custom_green_button.dart';
import 'package:online_med/common/widgets/custom_password_textfield.dart';
import 'package:online_med/common/widgets/cutom_alert_dialog.dart';
import 'package:online_med/features/auth/sign_in/Login/presentation/widgets/forgot_password_text.dart';

import '../../../../../../common/widgets/custom_textfield.dart';
import '../../../../../../common/widgets/sign_up_another.dart';
import '../../../../../../common/widgets/signup_textbutton.dart';
import '../bloc/login_bloc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(leading: const CustomBackButton(),centerTitle: true,title: const AppBarTitle(title: "Login"),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: formkey,
          child: ListView(
            children: [
              const SizedBox(height: 24,),
              CustomTextField(icon: 'assets/images/Icon/Email.png', textEditingController: _emailController, hintText: "Enter your email"),
              const SizedBox(height: 16),
              BlocConsumer<LoginBloc, LoginState>(
                  listener: (context, state) {
                    if(state is LoginSuccessState){
                      showDialog(context: context, builder: (context) => CustomAlertDialog(title: "Yeay! Welcome Back", subtitle: "Once again you login successfully into medidoc app", buttonTitle: "Go to home", onTab: () => Navigator.of(context).pop(), cancelButton: false, image: "assets/images/Icon/Vector.png"));
                    }
                  },
                  builder: (context, state) {
                    if(state is LoginErrorState){
                      return CustomPasswordTextField(icon: 'assets/images/Icon/Password.png', textEditingController: _passwordController, hintText: "Enter your password", error: true);
                    }
                    return CustomPasswordTextField(icon: 'assets/images/Icon/Password.png', textEditingController: _passwordController, hintText: "Enter your password", error: false);
                  },
),
              const SizedBox(height: 8,),
              const Row(mainAxisAlignment: MainAxisAlignment.end, children: [ForgotPasswordText(text: "Forgot Password?"),],),
              const SizedBox(height: 32,),
              CustomGreenButton(text: "Login", onTap: (){
                if(formkey.currentState!.validate()){
                BlocProvider.of<LoginBloc>(context).add(LoginEnterEvent(email: _emailController.text, password: _passwordController.text));
                }
              }),
              const SizedBox(height: 32,),
              const SignUpTextButton(),
              const SizedBox(height: 29,),
              const SignUpAnother(),
            ],
          ),
        ),
      ),
    );
  }
}
