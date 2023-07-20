import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:magdsoft_flutter_task/core/errors/failure.dart';
import 'package:magdsoft_flutter_task/features/verify/data/repo/verify_repo.dart';

import '../../../../core/utils/api_services.dart';
import '../models/Verify_model.dart';


class VerifyRepoImpl implements VerifyRepo {
  final ApiService apiService;

  VerifyRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<VerifyModel>>> verify({required Map<String, dynamic> pram}) async {
    try {
      var data = await apiService.post(
        endPoint: 'otp',
        pram: pram,
      );
      print(data);
      List<VerifyModel> verifyModel = [];
        verifyModel.add(VerifyModel.fromJson(data));

      return right(verifyModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
