import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../models/Product_model.dart';

abstract class ProductRepo {
  Future<Either<Failure, List<ProductModel>>> getProduct();
}