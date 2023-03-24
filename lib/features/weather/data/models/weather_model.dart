import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory WeatherModel({
    City? city,
    String? cod,
    double? message,
    int? cnt,
    List<ListElement>? list,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) => _$WeatherModelFromJson(json);
}

@freezed
class City with _$City {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory City({
    int? id,
    String? name,
    Coord? coord,
    String? country,
    int? population,
    int? timezone,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

@freezed
class Coord with _$Coord {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Coord({
    int? lon,
    int? lat,
  }) = _Coord;

  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);
}

@freezed
class ListElement with _$ListElement {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ListElement({
    int? dt,
    int? sunrise,
    int? sunset,
    Temp? temp,
    FeelsLike? feelsLike,
    int? pressure,
    int? humidity,
    List<Weather>? weather,
    double? speed,
    int? deg,
    double? gust,
    int? clouds,
    double? pop,
    double? rain,
  }) = _ListElement;

  factory ListElement.fromJson(Map<String, dynamic> json) => _$ListElementFromJson(json);
}

@freezed
class FeelsLike with _$FeelsLike {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory FeelsLike({
    double? day,
    double? night,
    double? eve,
    double? morn,
  }) = _FeelsLike;

  factory FeelsLike.fromJson(Map<String, dynamic> json) => _$FeelsLikeFromJson(json);
}

@freezed
class Temp with _$Temp {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Temp({
    double? day,
    double? min,
    double? max,
    double? night,
    double? eve,
    double? morn,
  }) = _Temp;

  factory Temp.fromJson(Map<String, dynamic> json) => _$TempFromJson(json);
}

@freezed
class Weather with _$Weather {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Weather({
    int? id,
    String? main,
    String? description,
    String? icon,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);
}