import 'package:flutter/material.dart';

class Dash3 extends StatelessWidget {
  const Dash3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * .13,
        top:MediaQuery.of(context).size.width * .03,
      ),
      child: Container(
        height: 3,
        width: MediaQuery
            .of(context)
            .size
            .width * 0.35,
        color: const Color(0xFF639FD7),
      ),
    );
  }
}
