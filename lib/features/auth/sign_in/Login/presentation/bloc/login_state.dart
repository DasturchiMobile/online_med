part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}
class LoginEnterState extends LoginState {
  final String email;
  final String password;

  LoginEnterState({required this.email,required this.password});
}
class LoginSuccessState extends LoginState {}
class LoginErrorState extends LoginState {}