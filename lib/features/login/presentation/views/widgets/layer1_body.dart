import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_task/core/utils/assets.dart';

import '../../../../../constant.dart';

class Layer1Body extends StatelessWidget {
  const Layer1Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryColor,
        image: DecorationImage(
          image: const AssetImage(AssetsData.background),
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.45), BlendMode.dstATop),
        ),
      ),
      height: MediaQuery.of(context).size.height * 0.41,
    );
  }
}
