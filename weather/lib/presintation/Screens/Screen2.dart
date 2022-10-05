import 'package:flutter/material.dart';
import 'package:weather/Data/Model/weather_model.dart';
import 'package:weather/Domian/Entities/weather.dart';

class Screen2 extends StatefulWidget {
  late Weather weatherr;
  Screen2(this.weatherr);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(top: 200),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              ' ${widget.weatherr.cityName}',
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Temperature:  ${widget.weatherr.Temperature} °C',
                style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 10,
            ),
            Text('Decreption:  ${widget.weatherr.decreption}',
                style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 10,
            ),
            Text('Main Weather:  ${widget.weatherr.main}',
                style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 10,
            ),
            Text('Pressure:  ${widget.weatherr.presure}',
                style: TextStyle(fontSize: 20))
          ],
        ),
      ),
    ));
  }
}
