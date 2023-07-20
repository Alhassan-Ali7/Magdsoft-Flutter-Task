import 'package:flutter/material.dart';

class Option3 extends StatelessWidget {
  const Option3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.12,
      right: MediaQuery.of(context).size.width * 0.23,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(52),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              // changes position of shadow
            ),
          ],
        ),
        height: 52,
        width: 52,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(52),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
