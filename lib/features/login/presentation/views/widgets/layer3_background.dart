import 'package:flutter/material.dart';

class Layer3Body extends StatelessWidget {
  const Layer3Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.37,
      width: MediaQuery.of(context).size.width * .865,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(40)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7, // changes position of shadow
          ),
        ],
        color: Colors.white,
      ),
    );
  }
}
