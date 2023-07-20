import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magdsoft_flutter_task/features/verify/presentation/manager/verify_cubit/verify_cubit.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/functions/custom_snack_bar.dart';

class VerifyBottom extends StatelessWidget {
  const VerifyBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VerifyCubit, VerifyState>(
      listener: (context, state) {
        if(state is VerifySuccess){
          if(state.verifyModel[0].status == 200){
            customSnackBar(
              context,state.verifyModel[0].message.toString(),
            );
            print('hi');
            Navigator.of(context).pushNamed('/help');
          }else{
            customSnackBar(
              context,state.verifyModel[0].message.toString(),
            );
          }
        }else if(state is VerifyFailure){
          customSnackBar(
            context,state.errorMessage.toString(),
          );
        }
      },
      builder: (context, state) {

        late Map<String, dynamic> pram = {
          'code': BlocProvider.of<VerifyCubit>(context).code,
          'phone': BlocProvider.of<VerifyCubit>(context).phone,
        };
        return Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.084,
          ),
          child: GestureDetector(
            onTap: () {
              BlocProvider.of<VerifyCubit>(context).verify(pram: pram);
              print(pram);
              //Navigator.of(context).pushNamed('/help');
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.061,
              width: MediaQuery.of(context).size.width * .8,
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
                    height: 11,
                  ),
                  Text(
                    'Verify',
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
      },
    );
  }
}
