import 'package:bloc/bloc.dart';
import 'package:magdsoft_flutter_task/features/help/data/repo/help_repo_impl.dart';
import 'package:meta/meta.dart';

import '../../../data/models/help_model.dart';

part 'help_state.dart';

class HelpCubit extends Cubit<HelpState> {
  HelpCubit(this.helpRepoImpl) : super(HelpInitial());

  final HelpRepoImpl helpRepoImpl;

  Future<void> getHelp() async {
    emit(HelpLoading());
    var result = await helpRepoImpl.getHelp();
    //print(result);
    result.fold((failure) {
      emit(HelpFailure(failure.message));
    }, (help) {
      emit(HelpSuccess(help));
    });
  }
}
