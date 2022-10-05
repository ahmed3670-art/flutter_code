import 'package:flutter/material.dart';
import 'package:movies_app/core/Service/Service_Locator.dart';
import 'package:movies_app/movies/presentation/Screens/movies_screen.dart';

void main() {
  ServiceLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Movies App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainMoviesScreen());
  }
}
