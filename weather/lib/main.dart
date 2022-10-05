import 'package:flutter/material.dart';
import 'package:weather/Data/Data%20sorce/remote_data_source.dart';
import 'package:weather/Data/Repositroy/Weather_reporestory.dart';
import 'package:weather/Domian/Entities/weather.dart';
import 'package:weather/Domian/Usescase/get_wether_by_cityName.dart';
import 'package:weather/presintation/Screens/screen1.dart';

import 'Domian/Repository/Base_wether_reposetoriy.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: screen1(),
    );
  }
}
