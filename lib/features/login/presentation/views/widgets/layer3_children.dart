import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magdsoft_flutter_task/features/login/presentation/manager/login_cubit/login_cubit.dart';
import 'package:magdsoft_flutter_task/features/login/presentation/views/widgets/dash3.dart';
import 'package:magdsoft_flutter_task/features/login/presentation/views/widgets/login_buttom.dart';
import 'package:magdsoft_flutter_task/features/login/presentation/views/widgets/name_form_field.dart';
import 'package:magdsoft_flutter_task/features/login/presentation/views/widgets/phone_form_filed.dart';
import 'package:magdsoft_flutter_task/features/login/presentation/views/widgets/welcome_text.dart';

class Layer3Children extends StatelessWidget {
  Layer3Children({
    super.key,
  });

  final GlobalKey<FormState> formKey1 = GlobalKey();

  final GlobalKey<FormState> formKey2 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const WelcomeText(),
            const Dash3(),
            Form(
              key: formKey1,
              child: NameFormField(
                onChanged: (value) {
                  BlocProvider.of<LoginCubit>(context).name = value!;
                  //print(BlocProvider.of<LoginCubit>(context).name);
                },
              ),
            ),
            Form(
              key: formKey2,
              child: PhoneFormFiled(
                onChanged: (value) {
                  BlocProvider.of<LoginCubit>(context).phone = value!;
                  //(BlocProvider.of<LoginCubit>(context).phone);
                },
              ),
            ),
            LoginBottom(),
          ],
        );
      },
    );
  }
}
