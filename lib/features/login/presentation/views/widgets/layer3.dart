import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magdsoft_flutter_task/core/utils/api_services.dart';
import 'package:magdsoft_flutter_task/features/login/data/repo/login_repo_impl.dart';
import 'package:magdsoft_flutter_task/features/login/presentation/manager/login_cubit/login_cubit.dart';
import 'package:magdsoft_flutter_task/features/login/presentation/views/widgets/layer3_background.dart';
import 'package:magdsoft_flutter_task/features/login/presentation/views/widgets/layer3_children.dart';

class Layer3 extends StatelessWidget {
  const Layer3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children:  [
                  const Layer3Body(),
                  Layer3Children(),
                ],
              ),
              const SizedBox(
                height: 200,
              ),
            ],
          ),
        ),
      );
  }
}
