import 'package:dartz/dartz.dart';
import 'package:magdsoft_flutter_task/features/login/data/models/login_model.dart';

import '../../../../core/errors/failure.dart';

abstract class LoginRepo{
  Future<Either< Failure, List<LoginModel>>> login({required Map<String, dynamic> pram});
}