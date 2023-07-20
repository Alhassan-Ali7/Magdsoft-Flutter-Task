part of 'verify_cubit.dart';

@immutable
abstract class VerifyState {}

class VerifyInitial extends VerifyState {}

class VerifyLoading extends VerifyState {}

class VerifySuccess extends VerifyState {
  final List<VerifyModel> verifyModel;

  VerifySuccess(this.verifyModel);
}

class VerifyFailure extends VerifyState {
  final String errorMessage;

  VerifyFailure(this.errorMessage);

}
