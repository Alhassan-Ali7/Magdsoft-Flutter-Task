import 'package:flutter/material.dart';

import 'fasebook_logo.dart';

class Option1 extends StatelessWidget {
  const Option1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.12,
      left: MediaQuery.of(context).size.width * 0.25,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(52),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7, // changes position of shadow
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
          child: Row(
            children: const [
              SizedBox(
                width: 18,
              ),
              FacebookLogo(),
            ],
          ),
        ),
      ),
    );
  }
}
