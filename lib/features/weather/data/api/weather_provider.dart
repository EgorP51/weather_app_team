import 'dart:io';

import 'package:dio/dio.dart';
import 'package:weather_app_team/env/env.dart';
import 'package:weather_app_team/features/weather/data/api/api_result.dart';
import 'package:weather_app_team/features/weather/data/models/weather_model.dart';

class WeatherProvider {
  final _version = '2.5';
  final _dio = Dio(
    BaseOptions(
      queryParameters: {
        'appid': Env.weatherApiKey,
        'units': 'metric',
      },
      baseUrl: 'https://api.openweathermap.org',
      validateStatus: (_) => true,
    ),
  );

  Future<ApiResult<WeatherModel>> fetchWeatherForecastByCity({
    required String cityName,
  }) async {
    final parameters = <String, dynamic>{
      'q': cityName,
    };
    return _fetchWeatherForecast(
      queryParameters: parameters,
    );
  }

  Future<ApiResult<WeatherModel>> fetchWeatherForecastByCoordinates({
    required num lon,
    required num lat,
  }) async {
    final parameters = <String, dynamic>{
      'lon': lon,
      'lat': lat,
    };
    return _fetchWeatherForecast(
      queryParameters: parameters,
    );
  }

  Future<ApiResult<WeatherModel>> _fetchWeatherForecast({
    required Map<String, dynamic> queryParameters,
  }) async {
    try {
      final response = await _dio.get<dynamic>(
        '/data/$_version/forecast/daily',
        queryParameters: queryParameters,
      );
      final data = response.data;
      if (response.statusCode != HttpStatus.ok) {
        if (data is Map) {
          final error = data['message'].toString();
          return ApiResult.error(error);
        }
        return const ApiResult.error();
      }

      if (data is Map<String, dynamic>) {
        final weather = WeatherModel.fromJson(data);
        return ApiResult.data(weather);
      }

      return const ApiResult.error();
    } catch (error) {
      return ApiResult.error(error.toString());
    }
  }
}
