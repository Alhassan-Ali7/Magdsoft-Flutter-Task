import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magdsoft_flutter_task/core/utils/api_services.dart';
import 'package:magdsoft_flutter_task/features/help/presentation/manager/help_cubit/help_cubit.dart';
import 'package:magdsoft_flutter_task/features/help/presentation/views/widgets/help_view_body.dart';

import '../../data/repo/help_repo_impl.dart';

class HelpView extends StatelessWidget {
  const HelpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      const HelpViewBody();
  }
}
