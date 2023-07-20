import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magdsoft_flutter_task/features/verify/presentation/views/widgets/verify_view_body.dart';
import '../../../../core/utils/api_services.dart';
import '../../data/repo/verfiy_repo_impl.dart';
import '../manager/verify_cubit/verify_cubit.dart';

class VerifyView extends StatelessWidget {
  VerifyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Object? phone = ModalRoute.of(context)!.settings.arguments;
    print(phone);
    return VerifyViewBody();
  }
}
