import 'package:bloc/bloc.dart';
import 'package:weather_app_team/features/weather/domain/cubit/weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit({required dynamic weatherProvider})
      : _weatherProvider = weatherProvider,
        super(const WeatherState.initial());

  final dynamic _weatherProvider;

  Future<void> loadInitialData({required String cityName}) async {
    emit(const WeatherState.loading());
    final queryParameters = {'lat': 47.568980, 'long': 33.643315};

    final response = await _weatherProvider.getWeather(queryParameters);

    response.when(
      data: (data) {
        emit(WeatherState.loaded(weatherModel: data));
      },
      error: (_) {
        emit(const WeatherState.error());
      },
    );
  }

  Map<String, dynamic> getUserLocation() =>
      {'lat': 47.568980, 'long': 33.643315};

  bool isValidCityName({required String cityName}) => true;
}
