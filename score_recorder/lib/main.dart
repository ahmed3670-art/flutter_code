import 'package:flutter/material.dart';
import 'package:score_recorder/pages/screen1.dart';
import 'package:score_recorder/pages/screen2.dart';

main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: screen2(),
    );
  }
}
