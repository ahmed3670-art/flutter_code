import 'package:flutter/material.dart';
import 'package:weather/Data/Data%20sorce/remote_data_source.dart';
import 'package:weather/Data/Repositroy/Weather_reporestory.dart';
import 'package:weather/Domian/Entities/weather.dart';
import 'package:weather/Domian/Repository/Base_wether_reposetoriy.dart';
import 'package:weather/Domian/Usescase/get_wether_by_cityName.dart';
import 'package:weather/presintation/Screens/Screen2.dart';

class screen1 extends StatefulWidget {
  @override
  State<screen1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<screen1> {
  List<String> country = [
    'Egypt',
    "Cairo",
    'England',
    "London",
    'France',
    'Paris'
  ];
  String CountryChoosen = 'Egypt';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Weather App')),
      body: Padding(
        padding: EdgeInsets.only(
          top: 200,
        ),
        child: Center(
            child: Column(
          children: <Widget>[
            Text('Choose country name', style: TextStyle(fontSize: 30)),
            SizedBox(height: 40),
            //
            DropdownButton(
                value: CountryChoosen,
                items: country
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (e) {
                  setState(() {
                    CountryChoosen = e.toString();
                  });
                }),
            RaisedButton(
              onPressed: () async {
                baseRemoteDataSource baseremote = RemoteDataSource();
                BaseWetherReposetoriy baseWetherReposetoriy =
                    WeatherRepository(baseremote);

                Weather weather =
                    await getWeatherByCityName(baseWetherReposetoriy)
                        .execute(CountryChoosen);
                print(weather.main);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen2(weather)));
              },
              child: Text('Chose'),
              color: Colors.blue,
            )
          ],
        )),
      ),
    );
  }
}
