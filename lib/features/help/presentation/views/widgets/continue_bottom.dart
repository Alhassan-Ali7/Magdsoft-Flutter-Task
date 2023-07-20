import 'package:flutter/material.dart';

import '../../../../../constant.dart';

class ContinueBottom extends StatelessWidget {
  const ContinueBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.084,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/home');
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.0515,
          width: MediaQuery.of(context).size.width * .655,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            gradient: LinearGradient(
              colors: [
                kPrimaryColor,
                kPrimaryColor.withOpacity(.5),
                kPrimaryColor.withOpacity(.27),
              ],
            ),
          ),
          child: Column(
            children: const [
              SizedBox(
                height: 7,
              ),
              Text(
                'Continue',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFFFFFFF),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
