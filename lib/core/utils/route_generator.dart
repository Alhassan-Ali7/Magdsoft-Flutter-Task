import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_task/features/home/presentation/views/home_view.dart';
import 'package:magdsoft_flutter_task/features/login/presentation/views/login_view.dart';
import 'package:magdsoft_flutter_task/features/splash/presentation/views/splash_view.dart';
import 'package:magdsoft_flutter_task/features/verify/presentation/views/verify_view.dart';

import '../../features/help/presentation/views/help_view.dart';
import '../../features/product/presentation/views/product_view.dart';

class RouteGenerator {
  static Route<dynamic> generateRouter(RouteSettings settings) {
    //final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const SplashView());
      case '/login':
        return MaterialPageRoute(builder: (context) => const LoginView());
      case '/verify':
        return MaterialPageRoute(builder: (context) =>  VerifyView());
      case '/help':
        return MaterialPageRoute(builder: (context) => const HelpView());
      case '/home':
        return MaterialPageRoute(builder: (context) => const HomeView());
        case '/product':
        return MaterialPageRoute(builder: (context) => const ProductView());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
            centerTitle: true,
          ),
          body: const Center(
            child: Text('page not found!'),
          ),
        );
      },
    );
  }
}
