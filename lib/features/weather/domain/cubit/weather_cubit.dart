import 'package:bloc/bloc.dart';
import 'package:weather_app_team/core/utils/location_utils.dart';
import 'package:weather_app_team/features/weather/data/api/api_result.dart';
import 'package:weather_app_team/features/weather/data/api/weather_provider.dart';
import 'package:weather_app_team/features/weather/data/models/weather_model.dart';
import 'package:weather_app_team/features/weather/domain/cubit/weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit({required WeatherProvider weatherProvider})
      : _weatherProvider = weatherProvider,
        super(const WeatherState.initial());

  final WeatherProvider _weatherProvider;

  Future<void> loadWeatherData({String? cityName, required bool isCity}) async {
    emit(const WeatherState.loading());
    late ApiResult<WeatherModel> response;

    if (!isCity) {
      try {
        final currentPosition = await LocationUtils().getUserLocation();
        response = await _weatherProvider.fetchWeatherForecastByCoordinates(
          lat: currentPosition.latitude,
          lon: currentPosition.longitude,
        );
      } catch (e) {
        emit(const WeatherState.error());
        return;
      }
    } else if (isCity && cityName != null) {
      response = await _weatherProvider.fetchWeatherForecastByCity(
        cityName: cityName,
      );
    } else {
      emit(const WeatherState.error());
      return;
    }
    response.when(
      data: (data) {
        emit(WeatherState.loaded(weatherModel: data));
      },
      error: (_) {
        emit(const WeatherState.error());
      },
    );
  }
}
