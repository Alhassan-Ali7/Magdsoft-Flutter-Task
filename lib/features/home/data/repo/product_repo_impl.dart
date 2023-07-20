import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:magdsoft_flutter_task/core/errors/failure.dart';
import 'package:magdsoft_flutter_task/features/home/data/repo/product_repo.dart';
import '../../../../core/utils/api_services.dart';
import '../models/Product_model.dart';


class ProductRepoImpl implements ProductRepo {
  final ApiService apiService;

  ProductRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<ProductModel>>> getProduct() async {
    try {
      var data = await apiService.get(
        endPoint: 'getProducts',
      );
      print(data);
      List<ProductModel> productModel = [];
      productModel.add(ProductModel.fromJson(data));

      return right(productModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
