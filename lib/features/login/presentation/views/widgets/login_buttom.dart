import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magdsoft_flutter_task/constant.dart';
import 'package:magdsoft_flutter_task/features/login/presentation/manager/login_cubit/login_cubit.dart';
import 'package:magdsoft_flutter_task/features/verify/presentation/manager/verify_cubit/verify_cubit.dart';

import '../../../../../core/utils/functions/custom_snack_bar.dart';

class LoginBottom extends StatelessWidget {
  LoginBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          if (state.loginModel[0].status == 200) {
            BlocProvider.of<VerifyCubit>(context).phone =
                BlocProvider.of<LoginCubit>(context).phone;
            if (state.loginModel[0].message == 'Account Created Successfully') {
              customSnackBar(
                context,
                state.loginModel[0].message.toString(),
              );
              Navigator.of(context).pushNamed('/verify');
            }else if(state.loginModel[0].message == 'Account Verified') {
              customSnackBar(
                context,
                'Login Successfully',
              );
              Navigator.of(context).pushNamed('/home');
            }
          } else {
            customSnackBar(
              context,
              state.loginModel[0].message.toString(),
            );
          }
        } else if (state is LoginFailure) {
          customSnackBar(
            context,
            state.errorMessage.toString(),
          );
        }
      },
      builder: (context, state) {
        late Map<String, dynamic> pram = {
          'phone': BlocProvider.of<LoginCubit>(context).phone,
          'name': BlocProvider.of<LoginCubit>(context).name,
        };
        return Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .1,
            top: MediaQuery.of(context).size.width * .07,
          ),
          child: GestureDetector(
            onTap: () {
              BlocProvider.of<LoginCubit>(context).login(pram: pram);
              print(pram);
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
                    height: 6,
                  ),
                  Text(
                    'Login',
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
