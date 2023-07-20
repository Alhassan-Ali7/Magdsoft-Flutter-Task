import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_task/features/login/presentation/views/widgets/layer1.dart';
import 'package:magdsoft_flutter_task/features/login/presentation/views/widgets/layer2.dart';
import 'package:magdsoft_flutter_task/features/login/presentation/views/widgets/layer3.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        //alignment: Alignment.topCenter,
        children: const [
          Layer1(),
          Layer2(),
          Layer3(),
        ],
      ),
    );
  }
}
