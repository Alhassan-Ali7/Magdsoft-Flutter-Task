import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import 'help_view_component.dart';

class HelpViewBody extends StatelessWidget {
  const HelpViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
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
          ),
          const HelpViewComponent(),
        ],
      ),
    );
  }
}
