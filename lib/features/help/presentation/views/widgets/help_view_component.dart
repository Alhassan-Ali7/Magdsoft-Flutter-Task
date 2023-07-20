import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magdsoft_flutter_task/features/help/presentation/manager/help_cubit/help_cubit.dart';
import 'package:magdsoft_flutter_task/features/help/presentation/views/widgets/continue_bottom.dart';
import 'package:magdsoft_flutter_task/features/help/presentation/views/widgets/help_information.dart';
import 'package:magdsoft_flutter_task/features/help/presentation/views/widgets/help_text.dart';

class HelpViewComponent extends StatelessWidget {
  const HelpViewComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HelpCubit, HelpState>(
      builder: (context, state) {
        if (state is HelpSuccess) {
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.054,
                ),
                const HelpText(),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.07,
                // ),
                ListView.separated(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
                  itemCount: state.helpModel[0].help!.length,
                  itemBuilder: (context, index) => HelpInformation(
                    description: state.helpModel[0].help![index].answer!,
                    title: state.helpModel[0].help![index].question!,
                  ),
                ),
                const ContinueBottom(),
              ],
            ),
          );
        }
        return SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.054,
              ),
              const HelpText(),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.07,
              // ),
              ListView.separated(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) => SizedBox(
                  height: 20,
                ),
                itemCount: 5,
                itemBuilder: (context, index) => HelpInformation(
                  title: 'waiting',
                  description: 'waiting',
                ),
              ),
              const ContinueBottom(),
            ],
          ),
        );
      },
    );
  }
}
