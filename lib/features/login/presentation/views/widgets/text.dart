import 'package:flutter/material.dart';

class ORText extends StatelessWidget {
  const ORText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.23,
      left: MediaQuery.of(context).size.width * 0.47,
      child: const Text(
        'OR',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Color(0x9C0062BD),
        ),
      ),
    );
  }
}
