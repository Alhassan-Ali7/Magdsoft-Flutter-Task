import 'package:flutter/material.dart';

class Text2 extends StatelessWidget {
  const Text2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.0, bottom: 9.0),
      child: Text(
        'Acer Predator Helios 300',
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    );
  }
}
