import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_task/features/login/presentation/views/widgets/layer2_body.dart';
import 'package:magdsoft_flutter_task/features/login/presentation/views/widgets/text.dart';

import 'dash1.dart';
import 'dash2.dart';
import 'google_logo.dart';
import 'ios_logo.dart';
import 'option1.dart';
import 'option2.dart';
import 'option3.dart';

class Layer2 extends StatelessWidget {
  const Layer2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Stack(
        children: const[
          Layer2Body(),
          Dash1(),
          ORText(),
          Dash2(),
          Option1(),
          Option2(),
          Option3(),
          IosLogo(),
          GoogleLogo(),
        ],
      ),
    );
  }
}
