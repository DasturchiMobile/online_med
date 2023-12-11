part of 'signup_bloc.dart';

@immutable
abstract class SignUpEvent {}

class SignUpRequestEvent extends SignUpEvent {
  final String name;
  final String email;
  final String password;

  SignUpRequestEvent({required this.name,required this.email,required this.password});
}
