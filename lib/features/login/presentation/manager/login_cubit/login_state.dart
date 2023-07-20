part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final List<LoginModel> loginModel;

  LoginSuccess(this.loginModel);
}

class LoginFailure extends LoginState {
  final String errorMessage;

  LoginFailure(this.errorMessage);

}
