import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_task/features/home/presentation/views/widgets/background.dart';
import 'package:magdsoft_flutter_task/features/home/presentation/views/widgets/text1.dart';
import 'package:magdsoft_flutter_task/features/home/presentation/views/widgets/text2.dart';

class Layer2 extends StatelessWidget {
  const Layer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: const [
        Background(),
        Text1(),
        Text2(),
      ],
    );
  }
}
