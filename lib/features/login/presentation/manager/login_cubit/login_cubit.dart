import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magdsoft_flutter_task/features/login/data/models/login_model.dart';
import 'package:magdsoft_flutter_task/features/login/data/repo/login_repo_impl.dart';
import 'package:meta/meta.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(LoginInitial());

  final LoginRepoImpl loginRepo;
   String? name;
   String? phone;


  Future<void> login({required Map<String, dynamic> pram}) async{
    emit(LoginLoading());
    var result = await loginRepo.login(
      pram: pram,
    );

    result.fold((failure) {
      //print(failure.message.toString());
      emit(LoginFailure(failure.message));
    }, (loginModel) {
      emit(LoginSuccess(loginModel));
    });
  }
}
