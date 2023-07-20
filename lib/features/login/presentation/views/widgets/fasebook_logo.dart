import 'package:flutter/material.dart';

import '../../../../../constant.dart';

class FacebookLogo extends StatelessWidget {
  const FacebookLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'f',
      style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.w400,
        color: kPrimaryColor,
      ),
    );
  }
}
