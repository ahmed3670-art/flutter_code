import 'package:flutter/material.dart';
import 'package:products_application/constants/style_manager.dart';
import 'package:products_application/presentation/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getAppTheme(),
      onGenerateRoute: AppRouter.getRoute,
      initialRoute: AppRouter.splashRoute,
    );
  }
}
