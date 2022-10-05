import 'package:weather/Data/Data%20sorce/remote_data_source.dart';
import 'package:weather/Domian/Entities/weather.dart';
import 'package:weather/Domian/Repository/Base_wether_reposetoriy.dart';

class WeatherRepository implements BaseWetherReposetoriy {
  final baseRemoteDataSource baseremotedatasource;
  WeatherRepository(this.baseremotedatasource);

  @override
  Future<Weather> getWeatherByCityName(String CityName) async {
    return (await baseremotedatasource.getWeatherByCountryName(CityName))!;
  }
}
