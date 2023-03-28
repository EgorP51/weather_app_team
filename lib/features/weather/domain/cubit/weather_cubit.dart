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

  Future<void> _loadWeatherData<T>(T searchParams) async {
    late ApiResult<WeatherModel> response;

    if (searchParams is String) {
      response = await _weatherProvider.fetchWeatherForecastByCity(
        cityName: searchParams,
      );
    } else if (searchParams is Map<String, num>) {
      response = await _weatherProvider.fetchWeatherForecastByCoordinates(
        lat: searchParams['lat']!,
        lon: searchParams['lon']!,
      );
    }else{
      emit(const WeatherState.error());
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

    try{
      final locationUtils = LocationUtils();
      final currentPosition = await locationUtils.getUserLocation();

      await _loadWeatherData<Map<String,num>>({
        'lat': currentPosition.latitude,
        'lon': currentPosition.longitude
      });
    }catch(e){
      emit(const WeatherState.permissionsDenied());
    }
  }

  void useCityName<String>({required String cityName}) {
    emit(const WeatherState.loading());
    _loadWeatherData(cityName);
  }
}
