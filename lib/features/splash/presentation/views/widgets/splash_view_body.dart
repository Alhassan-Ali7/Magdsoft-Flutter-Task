import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_task/features/splash/presentation/views/widgets/rect_bot.dart';
import 'package:magdsoft_flutter_task/features/splash/presentation/views/widgets/rect_top.dart';
import '../../../../../constant.dart';
import 'ellipse_bot1.dart';
import 'ellipse_bot2.dart';
import 'ellipse_top1.dart';
import 'ellipse_top2.dart';
import 'logo.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();

    navigateToLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: const[
          Logo(),
          EllipseTop1(),
          EllipseTop2(),
          EllipseBot1(),
          EllipseBot2(),
          RectTop(),
          RectBot(),
        ],
      ),
    );
  }

  void navigateToLogin(context) {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushNamed('/login');
    });
  }
}













