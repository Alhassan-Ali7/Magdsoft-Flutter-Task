import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:magdsoft_flutter_task/core/errors/failure.dart';
import 'package:magdsoft_flutter_task/features/login/data/models/Login_model.dart';

import '../../../../core/utils/api_services.dart';
import 'login_repo.dart';

class LoginRepoImpl implements LoginRepo {
  final ApiService apiService;

  LoginRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<LoginModel>>> login({required Map<String, dynamic> pram}) async {
    try {
      var data = await apiService.post(
        endPoint: 'verifyPhone',
        pram: pram,
      );
      print(data);
      List<LoginModel> loginModel = [];
        loginModel.add(LoginModel.fromJson(data));

      return right(loginModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
