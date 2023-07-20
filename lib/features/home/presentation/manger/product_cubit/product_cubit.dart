import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/product_model.dart';
import '../../../data/repo/product_repo_impl.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.productRepoImpl) : super(ProductInitial());

  final ProductRepoImpl productRepoImpl;

  Future<void> getProduct() async {
    emit(ProductLoading());
    var result = await productRepoImpl.getProduct();
    //print(result);
    result.fold((failure) {
      emit(ProductFailure(failure.message));
    }, (product) {
      emit(ProductSuccess(product));
    });
  }}
