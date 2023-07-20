import 'package:flutter/material.dart';

import '../../../../../constant.dart';

class Text2 extends StatelessWidget {
  const Text2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Resend Code',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: kPrimaryColor,
      ),
    );
  }
}
