import 'package:flutter/material.dart';

class EllipseTop1 extends StatelessWidget {
  const EllipseTop1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.19,
      left: MediaQuery.of(context).size.width * 0.7,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.26,
        width: MediaQuery.of(context).size.width * 0.51,
        decoration: const BoxDecoration(
          color: Color(0xFF478ecf),
          borderRadius: BorderRadius.all(Radius.circular(100.0)),
        ),
      ),
    );
  }
}
