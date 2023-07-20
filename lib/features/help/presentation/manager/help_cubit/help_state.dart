part of 'help_cubit.dart';

@immutable
abstract class HelpState {}

class HelpInitial extends HelpState {}

class HelpLoading extends HelpState {}

class HelpSuccess extends HelpState {
  final List<HelpModel> helpModel;

  HelpSuccess(this.helpModel);
}

class HelpFailure extends HelpState {
  final String errorMessage;

  HelpFailure(this.errorMessage);
}
