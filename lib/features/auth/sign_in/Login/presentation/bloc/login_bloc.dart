
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<LoginEnterEvent>((event, emit) {
      if(event.email == "dasturchimobile@gmail.com" && event.password == "Azizbek11"){
        emit(LoginSuccessState());
      }else{
        emit(LoginErrorState());
      }
    });
  }
}
