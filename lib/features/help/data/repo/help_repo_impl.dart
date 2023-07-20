import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:magdsoft_flutter_task/core/errors/failure.dart';
import '../../../../core/utils/api_services.dart';
import 'package:magdsoft_flutter_task/features/help/data/models/help_model.dart';

import 'help_repo.dart';

class HelpRepoImpl implements HelpRepo {
  final ApiService apiService;

  HelpRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<HelpModel>>> getHelp() async {
    try {
      var data = await apiService.get(
        endPoint: 'getHelp',
      );
      //print(data);
      List<HelpModel> helpModel = [];
      helpModel.add(HelpModel.fromJson(data));

      return right(helpModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
