import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_task/features/verify/presentation/views/widgets/verify_view_component.dart';
import '../../../../../constant.dart';

class VerifyViewBody extends StatelessWidget {
  const VerifyViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kPrimaryColor.withOpacity(.85),
              kPrimaryColor.withOpacity(.2),
              kPrimaryColor.withOpacity(0),
            ],
          ),
        ),
        child: const VerifyViewComponent(),
      ),
    );
  }
}
