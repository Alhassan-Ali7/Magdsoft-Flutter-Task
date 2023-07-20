import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * .13,
          top:MediaQuery.of(context).size.width * .028,
      ),
      child: const Text(
        'Welcome',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w400,
          color: Color(0xFF464646),
        ),
      ),
    );
  }
}
