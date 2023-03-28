import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_team/features/weather/data/models/weather_model.dart';

part 'weather_state.freezed.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = Initial;
  const factory WeatherState.loading() = Loading;
  const factory WeatherState.loaded({required WeatherModel weatherModel}) = Loaded;
  const factory WeatherState.error() = Error;
  const factory WeatherState.permissionsDenied() = PermissionsDenied;
}
