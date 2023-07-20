import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magdsoft_flutter_task/features/verify/presentation/views/widgets/pin_put.dart';
import 'package:magdsoft_flutter_task/features/verify/presentation/views/widgets/text1.dart';
import 'package:magdsoft_flutter_task/features/verify/presentation/views/widgets/text2.dart';
import 'package:magdsoft_flutter_task/features/verify/presentation/views/widgets/verify_bottom.dart';
import '../../manager/verify_cubit/verify_cubit.dart';

class VerifyViewComponent extends StatelessWidget {
  const VerifyViewComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.0665,
          ),
          const Text1(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.148,
          ),
          PinPut(
            onChanged: (value){
              BlocProvider.of<VerifyCubit>(context).code = value;
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          const Text2(),
          const VerifyBottom(),
        ],
      );
  }
}
