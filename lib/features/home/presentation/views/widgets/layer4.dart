import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magdsoft_flutter_task/features/home/presentation/manger/product_cubit/product_cubit.dart';
import 'package:magdsoft_flutter_task/features/home/presentation/views/widgets/product_item.dart';

class Layer4 extends StatelessWidget {
  const Layer4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductSuccess) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text(
                  'Recomended for You',
                  style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF464646),
                  ),
                ),
                GridView.count(
                  physics: const ScrollPhysics(),
                  childAspectRatio: 0.7,
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: List.generate(
                    state.productModel[0].products!.length,
                    (index) => ProductItem(
                      name: state.productModel[0].products![index].name,
                      price: state.productModel[0].products![index].price,
                      company: state.productModel[0].products![index].company,
                      image: state.productModel[0].products![index].image,
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                'Recomended for You',
                style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF464646),
                ),
              ),
              GridView.count(
                physics: const ScrollPhysics(),
                childAspectRatio: 0.7,
                shrinkWrap: true,
                crossAxisCount: 2,
                children: List.generate(
                  5,
                  (index) => ProductItem(
                    name: 'waiting',
                    image: 'waiting',
                    company:'waiting',
                    price: 'waiting',
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
