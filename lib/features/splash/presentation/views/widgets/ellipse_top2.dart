import 'package:flutter/material.dart';

import '../../../../../constant.dart';

class EllipseTop2 extends StatelessWidget {
  const EllipseTop2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.23,
      left: MediaQuery.of(context).size.width * 0.7,
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
