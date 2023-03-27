import 'package:bloc/bloc.dart';
import 'package:weather_app_team/core/utils/location_utils.dart';
import 'package:weather_app_team/features/weather/domain/cubit/weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit({required dynamic weatherProvider})
      : _weatherProvider = weatherProvider,
        super(const WeatherState.initial());

  final dynamic _weatherProvider;

  Future<void> _loadWeatherData(dynamic searchParams) async {
    var response;

    if (searchParams is String) {
      response = await _weatherProvider.fetchWeatherForecastByCity(
        cityName: searchParams,
      );
    } else if (searchParams is Map<String, dynamic>) {
      response = await _weatherProvider.fetchWeatherForecastByCoordinates(
        lat: searchParams['lat'],
        lon: searchParams['lon'],
      );
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

  Future<void> useUserLocation() async {
    emit(const WeatherState.loading());
    final locationUtils = LocationUtils();
    final currentPosition = await locationUtils.getUserLocation();

    await _loadWeatherData({
      'lat': currentPosition.latitude,
      'lon': currentPosition.longitude
    });
  }

  void useCityName({required String cityName}) {
    emit(const WeatherState.loading());
    _loadWeatherData(cityName);
  }
}
