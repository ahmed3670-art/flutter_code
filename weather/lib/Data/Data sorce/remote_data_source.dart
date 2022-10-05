import 'dart:convert';

import 'package:weather/Core/utiles/Const.dart';
import 'package:weather/Data/Model/weather_model.dart';
import 'package:dio/dio.dart';

abstract class baseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountryName(String CountryName);
}

class RemoteDataSource implements baseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String CountryName) async {
    try {
      var response = await Dio().get(
          '${Constatint.BaseUrl}?q=$CountryName&appid=${Constatint.apikey}');
      print(response);
      return WeatherModel.fromJason((response.data));
    } catch (e) {
      print('22222222222222//////////////////////');
      print(e);
    }
  }
}
