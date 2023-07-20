import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.39,
      left: MediaQuery.of(context).size.width * 0.17,
      height: MediaQuery.of(context).size.height * 0.223,
      width: MediaQuery.of(context).size.width * 0.626,
      child: Image.asset(AssetsData.splash),
    );
  }
}

