import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_task/features/home/presentation/views/widgets/search_bar.dart';

import 'filter_bar.dart';

class Layer1 extends StatelessWidget {
  const Layer1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SearchBar(),
        FilterBar(),
      ],
    );
  }
}
