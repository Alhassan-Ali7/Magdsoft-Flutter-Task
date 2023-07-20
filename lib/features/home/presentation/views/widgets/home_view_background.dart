import 'package:flutter/material.dart';

import '../../../../../constant.dart';

class HomeViewBackground extends StatelessWidget {
  const HomeViewBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            kPrimaryColor.withOpacity(.85),
            kPrimaryColor.withOpacity(0),
          ],
        ),
      ),
    );
  }
}
