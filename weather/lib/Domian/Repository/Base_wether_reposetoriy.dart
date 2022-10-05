import 'package:weather/Domian/Entities/weather.dart';

abstract class BaseWetherReposetoriy {
  Future<Weather> getWeatherByCityName(String CityName);
}
