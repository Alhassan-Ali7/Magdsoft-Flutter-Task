import 'package:flutter/material.dart';

class Text1 extends StatelessWidget {
  const Text1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.0, bottom: 22),
      child: Text(
        'New Release',
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    );
  }
}
