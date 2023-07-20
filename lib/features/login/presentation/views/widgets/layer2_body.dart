import 'package:flutter/material.dart';

class Layer2Body extends StatelessWidget {
  const Layer2Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.662,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60), topRight: Radius.circular(60)),
        color: Colors.white,
      ),
    );
  }
}
