import 'package:flutter/material.dart';

class RectBot extends StatelessWidget {
  const RectBot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.04,
      right: MediaQuery.of(context).size.width * 0.03,
      child: Transform.rotate(
        angle: 0.8,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.42,
          width: MediaQuery.of(context).size.width * 0.2,
          decoration: const BoxDecoration(
            color: Color(0xFF0059AB),
            borderRadius: BorderRadius.all(Radius.circular(100.0)),
          ),
        ),
      ),
    );
  }
}

