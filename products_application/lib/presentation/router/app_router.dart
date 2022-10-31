import 'package:flutter/material.dart';
import 'package:products_application/presentation/screens/shared/login_screen.dart';
import 'package:products_application/presentation/screens/shared/splash_screen.dart';

import 'package:products_application/presentation/screens/user/help_screen.dart';
import 'package:products_application/presentation/screens/user/home_screen.dart';

class AppRouter {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String helpRoute = "/help";
  static const String homeRoute = "/home";

  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouter.splashRoute:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case AppRouter.loginRoute:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case AppRouter.helpRoute:
        return MaterialPageRoute(builder: (context) => const helpScreen());
      case AppRouter.homeRoute:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      // ignore: no_duplicate_case_values
    }
    return unDefinedRoute();
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        // ignore: prefer_const_constructors
        builder: (context) => Scaffold(
              body: const Center(child: Text("StringManager.noRouteFound")),
            ));
  }
}
