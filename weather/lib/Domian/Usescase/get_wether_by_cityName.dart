import 'package:weather/Domian/Entities/weather.dart';
import 'package:weather/Domian/Repository/Base_wether_reposetoriy.dart';

class getWeatherByCityName {
  final BaseWetherReposetoriy reposetory;
  getWeatherByCityName(this.reposetory);
  Future<Weather> execute(String cityname) async {
    return await reposetory.getWeatherByCityName(cityname);
  }
}
