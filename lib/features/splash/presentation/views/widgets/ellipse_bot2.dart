import 'package:flutter/material.dart';

import '../../../../../constant.dart';

class EllipseBot2 extends StatelessWidget {
  const EllipseBot2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.17,
      right: MediaQuery.of(context).size.width * 0.71,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.26,
        width: MediaQuery.of(context).size.width * 0.51,
        decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.all(Radius.circular(100.0)),
        ),
      ),
    );
  }
}
