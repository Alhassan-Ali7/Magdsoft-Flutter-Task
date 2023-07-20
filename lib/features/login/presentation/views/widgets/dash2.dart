import 'package:flutter/material.dart';

class Dash2 extends StatelessWidget {
  const Dash2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.24,
      right: MediaQuery.of(context).size.width * 0.071,
      left: MediaQuery.of(context).size.width * 0.55,
      child: Container(
        height: 1,
        width: MediaQuery.of(context).size.width * 0.38,
        color: const Color(0xFF639FD7),
      ),
    );
  }
}
