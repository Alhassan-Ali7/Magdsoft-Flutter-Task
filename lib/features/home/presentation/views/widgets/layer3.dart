import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_task/features/home/presentation/views/widgets/filter_item.dart';

class Layer3 extends StatelessWidget {
  const Layer3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.08,
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 25,),
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return  FilterItem(
              index: index,
            );
          },
        ),
      ),
    );
  }
}
