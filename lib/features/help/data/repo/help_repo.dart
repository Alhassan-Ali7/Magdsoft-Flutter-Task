import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../models/help_model.dart';

abstract class HelpRepo {
  Future<Either<Failure, List<HelpModel>>> getHelp();
}