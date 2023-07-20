import 'package:dartz/dartz.dart';
import 'package:magdsoft_flutter_task/features/verify/data/models/Verify_model.dart';

import '../../../../core/errors/failure.dart';

abstract class VerifyRepo{
  Future<Either< Failure, List<VerifyModel>>> verify({required Map<String, dynamic> pram});
}