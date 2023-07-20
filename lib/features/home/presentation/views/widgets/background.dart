import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_task/core/utils/assets.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.86,
      height: MediaQuery.of(context).size.height * 0.2,
      child: Image.asset(AssetsData.product1),
    );
  }
}
