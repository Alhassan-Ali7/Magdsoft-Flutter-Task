import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/Verify_model.dart';
import '../../../data/repo/verfiy_repo_impl.dart';

part 'verify_state.dart';

class VerifyCubit extends Cubit<VerifyState> {
  VerifyCubit(this.verifyRepoImpl) : super(VerifyInitial());

  final VerifyRepoImpl verifyRepoImpl;
  String? code;
  String? phone;


  Future<void> verify({required Map<String, dynamic> pram}) async{
    emit(VerifyLoading());
    var result = await verifyRepoImpl.verify(
      pram: pram,
    );

    result.fold((failure) {
      print(failure.message.toString());
      emit(VerifyFailure(failure.message));
    }, (verifyModel) {
      emit(VerifySuccess(verifyModel));
    });
  }
}
