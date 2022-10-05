import 'package:weather/Domian/Entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel(super.id, super.cityName, super.main, super.decreption,
      super.presure, super.Temperature);

  factory WeatherModel.fromJason(Map<String, dynamic> jason) {
    print('//////////////////////////////////');
    print('id = ${jason["id"]}');
    print('name = ${jason["name"]}');
    print('main = ${jason["weather"][0]["main"]}');
    print('desc = ${jason["weather"][0]["description"]}');
    print('pressure = ${jason["main"]["pressure"]}');
    return WeatherModel(
      jason["id"],
      jason["name"],
      jason["weather"][0]["main"],
      jason["weather"][0]["description"],
      jason["main"]["pressure"],
      jason["coord"]["lat"],
    );
  }
}
