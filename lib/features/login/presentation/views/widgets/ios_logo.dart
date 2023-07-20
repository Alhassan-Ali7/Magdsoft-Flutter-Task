import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_task/core/utils/assets.dart';

class IosLogo extends StatelessWidget {
  const IosLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.13,
      left: MediaQuery.of(context).size.width * 0.458,
      child: Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsData.ios),
          ),
        ),
      ),
    );
  }
}
