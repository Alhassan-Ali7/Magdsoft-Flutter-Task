import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magdsoft_flutter_task/core/utils/route_generator.dart';
import 'core/utils/api_services.dart';
import 'core/utils/bloc_observer.dart';
import 'features/help/data/repo/help_repo_impl.dart';
import 'features/help/presentation/manager/help_cubit/help_cubit.dart';
import 'features/home/data/repo/product_repo_impl.dart';
import 'features/home/presentation/manger/product_cubit/product_cubit.dart';
import 'features/login/data/repo/login_repo_impl.dart';
import 'features/login/presentation/manager/login_cubit/login_cubit.dart';
import 'features/verify/data/repo/verfiy_repo_impl.dart';
import 'features/verify/presentation/manager/verify_cubit/verify_cubit.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(const FlutterTask());
}

class FlutterTask extends StatelessWidget {
  const FlutterTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(LoginRepoImpl(ApiService(Dio()))),
        ),
        BlocProvider(
          create: (context) => VerifyCubit(VerifyRepoImpl(ApiService(Dio()))),
        ),
        BlocProvider(
            create: (context) => HelpCubit(HelpRepoImpl(ApiService(Dio())))..getHelp()),
        BlocProvider(
            create: (context) => ProductCubit(ProductRepoImpl(ApiService(Dio())))..getProduct()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRouter,
      ),
    );
  }
}
