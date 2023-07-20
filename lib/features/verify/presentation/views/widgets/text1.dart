import 'package:flutter/material.dart';

class Text1 extends StatelessWidget {
  const Text1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Verify Phone',
      style: TextStyle(
          fontSize: 30, fontWeight: FontWeight.w400, color: Colors.white),
    );
  }
}
