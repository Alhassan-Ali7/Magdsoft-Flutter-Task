import 'package:flutter/material.dart';

class HelpText extends StatelessWidget {
  const HelpText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Help',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    );
  }
}
