import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
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

  Future<void> useUserLocation() async {
    emit(const WeatherState.loading());

    final locationUtils = LocationUtils();
    late final Position currentPosition;

    try {
      currentPosition = await locationUtils.getUserLocation();
    } catch (e) {
      emit(const WeatherState.permissionsDenied());
    }

    final response = await _weatherProvider.fetchWeatherForecastByCoordinates(
      lat: currentPosition.latitude,
      lon: currentPosition.latitude,
    );

    _loadWeatherData(response);
  }

  Future<void> useCityName({required String cityName}) async {
    emit(const WeatherState.loading());

    final result = await _weatherProvider.fetchWeatherForecastByCity(
      cityName: cityName,
    );

    _loadWeatherData(result);
  }

  void _loadWeatherData(ApiResult<WeatherModel> result) {
    result.when(
      data: (data) {
        emit(WeatherState.loaded(weatherModel: data));
      },
      error: (_) {
        emit(const WeatherState.error());
      },
    );
  }
}
