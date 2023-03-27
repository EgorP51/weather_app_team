import 'package:bloc/bloc.dart';
import 'package:weather_app_team/features/weather/domain/cubit/weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit({required dynamic weatherProvider})
      : _weatherProvider = weatherProvider,
        super(const WeatherState.initial());

  final dynamic _weatherProvider;

  Future<void> _loadWeatherData(dynamic searchParams) async {
    emit(const WeatherState.loading());

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

  void useUserLocation() {
    final lat = 45.897654;
    final lon = 53.098765;

    //TODO: Add utils!

    _loadWeatherData({'lat': lat, 'lon': lon});
  }

  void useCityName({required String cityName}) {
    _loadWeatherData(cityName);
  }
}
