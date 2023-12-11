part of 'signup_bloc.dart';

@immutable
abstract class SignUpState {}

class SignUpInitial extends SignUpState {}

class SignUpRequestState extends SignUpState {
final String name;
final String email;
final String password;
SignUpRequestState({required this.name,required this.email,required this.password});
}
class SignUpSuccessState extends SignUpState{}
class SignUpErrorState extends SignUpState{}

