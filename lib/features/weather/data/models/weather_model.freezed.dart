// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  City? get city => throw _privateConstructorUsedError;
  String? get cod => throw _privateConstructorUsedError;
  double? get message => throw _privateConstructorUsedError;
  int? get cnt => throw _privateConstructorUsedError;
  List<ListElement>? get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call(
      {City? city,
      String? cod,
      double? message,
      int? cnt,
      List<ListElement>? list});

  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? cod = freezed,
    Object? message = freezed,
    Object? cnt = freezed,
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      cod: freezed == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as double?,
      cnt: freezed == cnt
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ListElement>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherModelCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$_WeatherModelCopyWith(
          _$_WeatherModel value, $Res Function(_$_WeatherModel) then) =
      __$$_WeatherModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {City? city,
      String? cod,
      double? message,
      int? cnt,
      List<ListElement>? list});

  @override
  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class __$$_WeatherModelCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$_WeatherModel>
    implements _$$_WeatherModelCopyWith<$Res> {
  __$$_WeatherModelCopyWithImpl(
      _$_WeatherModel _value, $Res Function(_$_WeatherModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? cod = freezed,
    Object? message = freezed,
    Object? cnt = freezed,
    Object? list = freezed,
  }) {
    return _then(_$_WeatherModel(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      cod: freezed == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as double?,
      cnt: freezed == cnt
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ListElement>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$_WeatherModel implements _WeatherModel {
  const _$_WeatherModel(
      {this.city,
      this.cod,
      this.message,
      this.cnt,
      final List<ListElement>? list})
      : _list = list;

  factory _$_WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherModelFromJson(json);

  @override
  final City? city;
  @override
  final String? cod;
  @override
  final double? message;
  @override
  final int? cnt;
  final List<ListElement>? _list;
  @override
  List<ListElement>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WeatherModel(city: $city, cod: $cod, message: $message, cnt: $cnt, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherModel &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.cod, cod) || other.cod == cod) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cnt, cnt) || other.cnt == cnt) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, city, cod, message, cnt,
      const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherModelCopyWith<_$_WeatherModel> get copyWith =>
      __$$_WeatherModelCopyWithImpl<_$_WeatherModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherModelToJson(
      this,
    );
  }
}

abstract class _WeatherModel implements WeatherModel {
  const factory _WeatherModel(
      {final City? city,
      final String? cod,
      final double? message,
      final int? cnt,
      final List<ListElement>? list}) = _$_WeatherModel;

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherModel.fromJson;

  @override
  City? get city;
  @override
  String? get cod;
  @override
  double? get message;
  @override
  int? get cnt;
  @override
  List<ListElement>? get list;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherModelCopyWith<_$_WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

City _$CityFromJson(Map<String, dynamic> json) {
  return _City.fromJson(json);
}

/// @nodoc
mixin _$City {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  Coord? get coord => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  int? get population => throw _privateConstructorUsedError;
  int? get timezone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res, City>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      Coord? coord,
      String? country,
      int? population,
      int? timezone});

  $CoordCopyWith<$Res>? get coord;
}

/// @nodoc
class _$CityCopyWithImpl<$Res, $Val extends City>
    implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? coord = freezed,
    Object? country = freezed,
    Object? population = freezed,
    Object? timezone = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      coord: freezed == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as Coord?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      population: freezed == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordCopyWith<$Res>? get coord {
    if (_value.coord == null) {
      return null;
    }

    return $CoordCopyWith<$Res>(_value.coord!, (value) {
      return _then(_value.copyWith(coord: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CityCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$$_CityCopyWith(_$_City value, $Res Function(_$_City) then) =
      __$$_CityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      Coord? coord,
      String? country,
      int? population,
      int? timezone});

  @override
  $CoordCopyWith<$Res>? get coord;
}

/// @nodoc
class __$$_CityCopyWithImpl<$Res> extends _$CityCopyWithImpl<$Res, _$_City>
    implements _$$_CityCopyWith<$Res> {
  __$$_CityCopyWithImpl(_$_City _value, $Res Function(_$_City) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? coord = freezed,
    Object? country = freezed,
    Object? population = freezed,
    Object? timezone = freezed,
  }) {
    return _then(_$_City(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      coord: freezed == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as Coord?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      population: freezed == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_City implements _City {
  const _$_City(
      {this.id,
      this.name,
      this.coord,
      this.country,
      this.population,
      this.timezone});

  factory _$_City.fromJson(Map<String, dynamic> json) => _$$_CityFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final Coord? coord;
  @override
  final String? country;
  @override
  final int? population;
  @override
  final int? timezone;

  @override
  String toString() {
    return 'City(id: $id, name: $name, coord: $coord, country: $country, population: $population, timezone: $timezone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_City &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.coord, coord) || other.coord == coord) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.population, population) ||
                other.population == population) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, coord, country, population, timezone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CityCopyWith<_$_City> get copyWith =>
      __$$_CityCopyWithImpl<_$_City>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CityToJson(
      this,
    );
  }
}

abstract class _City implements City {
  const factory _City(
      {final int? id,
      final String? name,
      final Coord? coord,
      final String? country,
      final int? population,
      final int? timezone}) = _$_City;

  factory _City.fromJson(Map<String, dynamic> json) = _$_City.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  Coord? get coord;
  @override
  String? get country;
  @override
  int? get population;
  @override
  int? get timezone;
  @override
  @JsonKey(ignore: true)
  _$$_CityCopyWith<_$_City> get copyWith => throw _privateConstructorUsedError;
}

Coord _$CoordFromJson(Map<String, dynamic> json) {
  return _Coord.fromJson(json);
}

/// @nodoc
mixin _$Coord {
  int? get lon => throw _privateConstructorUsedError;
  int? get lat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordCopyWith<Coord> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordCopyWith<$Res> {
  factory $CoordCopyWith(Coord value, $Res Function(Coord) then) =
      _$CoordCopyWithImpl<$Res, Coord>;
  @useResult
  $Res call({int? lon, int? lat});
}

/// @nodoc
class _$CoordCopyWithImpl<$Res, $Val extends Coord>
    implements $CoordCopyWith<$Res> {
  _$CoordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lon = freezed,
    Object? lat = freezed,
  }) {
    return _then(_value.copyWith(
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as int?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoordCopyWith<$Res> implements $CoordCopyWith<$Res> {
  factory _$$_CoordCopyWith(_$_Coord value, $Res Function(_$_Coord) then) =
      __$$_CoordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? lon, int? lat});
}

/// @nodoc
class __$$_CoordCopyWithImpl<$Res> extends _$CoordCopyWithImpl<$Res, _$_Coord>
    implements _$$_CoordCopyWith<$Res> {
  __$$_CoordCopyWithImpl(_$_Coord _value, $Res Function(_$_Coord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lon = freezed,
    Object? lat = freezed,
  }) {
    return _then(_$_Coord(
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as int?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Coord implements _Coord {
  const _$_Coord({this.lon, this.lat});

  factory _$_Coord.fromJson(Map<String, dynamic> json) =>
      _$$_CoordFromJson(json);

  @override
  final int? lon;
  @override
  final int? lat;

  @override
  String toString() {
    return 'Coord(lon: $lon, lat: $lat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Coord &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.lat, lat) || other.lat == lat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lon, lat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoordCopyWith<_$_Coord> get copyWith =>
      __$$_CoordCopyWithImpl<_$_Coord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoordToJson(
      this,
    );
  }
}

abstract class _Coord implements Coord {
  const factory _Coord({final int? lon, final int? lat}) = _$_Coord;

  factory _Coord.fromJson(Map<String, dynamic> json) = _$_Coord.fromJson;

  @override
  int? get lon;
  @override
  int? get lat;
  @override
  @JsonKey(ignore: true)
  _$$_CoordCopyWith<_$_Coord> get copyWith =>
      throw _privateConstructorUsedError;
}

ListElement _$ListElementFromJson(Map<String, dynamic> json) {
  return _ListElement.fromJson(json);
}

/// @nodoc
mixin _$ListElement {
  int? get dt => throw _privateConstructorUsedError;
  int? get sunrise => throw _privateConstructorUsedError;
  int? get sunset => throw _privateConstructorUsedError;
  Temp? get temp => throw _privateConstructorUsedError;
  FeelsLike? get feelsLike => throw _privateConstructorUsedError;
  int? get pressure => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;
  List<Weather>? get weather => throw _privateConstructorUsedError;
  double? get speed => throw _privateConstructorUsedError;
  int? get deg => throw _privateConstructorUsedError;
  double? get gust => throw _privateConstructorUsedError;
  int? get clouds => throw _privateConstructorUsedError;
  double? get pop => throw _privateConstructorUsedError;
  double? get rain => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListElementCopyWith<ListElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListElementCopyWith<$Res> {
  factory $ListElementCopyWith(
          ListElement value, $Res Function(ListElement) then) =
      _$ListElementCopyWithImpl<$Res, ListElement>;
  @useResult
  $Res call(
      {int? dt,
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
      double? rain});

  $TempCopyWith<$Res>? get temp;
  $FeelsLikeCopyWith<$Res>? get feelsLike;
}

/// @nodoc
class _$ListElementCopyWithImpl<$Res, $Val extends ListElement>
    implements $ListElementCopyWith<$Res> {
  _$ListElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? weather = freezed,
    Object? speed = freezed,
    Object? deg = freezed,
    Object? gust = freezed,
    Object? clouds = freezed,
    Object? pop = freezed,
    Object? rain = freezed,
  }) {
    return _then(_value.copyWith(
      dt: freezed == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as Temp?,
      feelsLike: freezed == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as FeelsLike?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double?,
      deg: freezed == deg
          ? _value.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as int?,
      gust: freezed == gust
          ? _value.gust
          : gust // ignore: cast_nullable_to_non_nullable
              as double?,
      clouds: freezed == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int?,
      pop: freezed == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double?,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TempCopyWith<$Res>? get temp {
    if (_value.temp == null) {
      return null;
    }

    return $TempCopyWith<$Res>(_value.temp!, (value) {
      return _then(_value.copyWith(temp: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FeelsLikeCopyWith<$Res>? get feelsLike {
    if (_value.feelsLike == null) {
      return null;
    }

    return $FeelsLikeCopyWith<$Res>(_value.feelsLike!, (value) {
      return _then(_value.copyWith(feelsLike: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ListElementCopyWith<$Res>
    implements $ListElementCopyWith<$Res> {
  factory _$$_ListElementCopyWith(
          _$_ListElement value, $Res Function(_$_ListElement) then) =
      __$$_ListElementCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? dt,
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
      double? rain});

  @override
  $TempCopyWith<$Res>? get temp;
  @override
  $FeelsLikeCopyWith<$Res>? get feelsLike;
}

/// @nodoc
class __$$_ListElementCopyWithImpl<$Res>
    extends _$ListElementCopyWithImpl<$Res, _$_ListElement>
    implements _$$_ListElementCopyWith<$Res> {
  __$$_ListElementCopyWithImpl(
      _$_ListElement _value, $Res Function(_$_ListElement) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? weather = freezed,
    Object? speed = freezed,
    Object? deg = freezed,
    Object? gust = freezed,
    Object? clouds = freezed,
    Object? pop = freezed,
    Object? rain = freezed,
  }) {
    return _then(_$_ListElement(
      dt: freezed == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as Temp?,
      feelsLike: freezed == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as FeelsLike?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      weather: freezed == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double?,
      deg: freezed == deg
          ? _value.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as int?,
      gust: freezed == gust
          ? _value.gust
          : gust // ignore: cast_nullable_to_non_nullable
              as double?,
      clouds: freezed == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int?,
      pop: freezed == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double?,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_ListElement implements _ListElement {
  const _$_ListElement(
      {this.dt,
      this.sunrise,
      this.sunset,
      this.temp,
      this.feelsLike,
      this.pressure,
      this.humidity,
      final List<Weather>? weather,
      this.speed,
      this.deg,
      this.gust,
      this.clouds,
      this.pop,
      this.rain})
      : _weather = weather;

  factory _$_ListElement.fromJson(Map<String, dynamic> json) =>
      _$$_ListElementFromJson(json);

  @override
  final int? dt;
  @override
  final int? sunrise;
  @override
  final int? sunset;
  @override
  final Temp? temp;
  @override
  final FeelsLike? feelsLike;
  @override
  final int? pressure;
  @override
  final int? humidity;
  final List<Weather>? _weather;
  @override
  List<Weather>? get weather {
    final value = _weather;
    if (value == null) return null;
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? speed;
  @override
  final int? deg;
  @override
  final double? gust;
  @override
  final int? clouds;
  @override
  final double? pop;
  @override
  final double? rain;

  @override
  String toString() {
    return 'ListElement(dt: $dt, sunrise: $sunrise, sunset: $sunset, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, weather: $weather, speed: $speed, deg: $deg, gust: $gust, clouds: $clouds, pop: $pop, rain: $rain)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListElement &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.deg, deg) || other.deg == deg) &&
            (identical(other.gust, gust) || other.gust == gust) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.pop, pop) || other.pop == pop) &&
            (identical(other.rain, rain) || other.rain == rain));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dt,
      sunrise,
      sunset,
      temp,
      feelsLike,
      pressure,
      humidity,
      const DeepCollectionEquality().hash(_weather),
      speed,
      deg,
      gust,
      clouds,
      pop,
      rain);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListElementCopyWith<_$_ListElement> get copyWith =>
      __$$_ListElementCopyWithImpl<_$_ListElement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListElementToJson(
      this,
    );
  }
}

abstract class _ListElement implements ListElement {
  const factory _ListElement(
      {final int? dt,
      final int? sunrise,
      final int? sunset,
      final Temp? temp,
      final FeelsLike? feelsLike,
      final int? pressure,
      final int? humidity,
      final List<Weather>? weather,
      final double? speed,
      final int? deg,
      final double? gust,
      final int? clouds,
      final double? pop,
      final double? rain}) = _$_ListElement;

  factory _ListElement.fromJson(Map<String, dynamic> json) =
      _$_ListElement.fromJson;

  @override
  int? get dt;
  @override
  int? get sunrise;
  @override
  int? get sunset;
  @override
  Temp? get temp;
  @override
  FeelsLike? get feelsLike;
  @override
  int? get pressure;
  @override
  int? get humidity;
  @override
  List<Weather>? get weather;
  @override
  double? get speed;
  @override
  int? get deg;
  @override
  double? get gust;
  @override
  int? get clouds;
  @override
  double? get pop;
  @override
  double? get rain;
  @override
  @JsonKey(ignore: true)
  _$$_ListElementCopyWith<_$_ListElement> get copyWith =>
      throw _privateConstructorUsedError;
}

FeelsLike _$FeelsLikeFromJson(Map<String, dynamic> json) {
  return _FeelsLike.fromJson(json);
}

/// @nodoc
mixin _$FeelsLike {
  double? get day => throw _privateConstructorUsedError;
  double? get night => throw _privateConstructorUsedError;
  double? get eve => throw _privateConstructorUsedError;
  double? get morn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeelsLikeCopyWith<FeelsLike> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeelsLikeCopyWith<$Res> {
  factory $FeelsLikeCopyWith(FeelsLike value, $Res Function(FeelsLike) then) =
      _$FeelsLikeCopyWithImpl<$Res, FeelsLike>;
  @useResult
  $Res call({double? day, double? night, double? eve, double? morn});
}

/// @nodoc
class _$FeelsLikeCopyWithImpl<$Res, $Val extends FeelsLike>
    implements $FeelsLikeCopyWith<$Res> {
  _$FeelsLikeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      night: freezed == night
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double?,
      eve: freezed == eve
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double?,
      morn: freezed == morn
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeelsLikeCopyWith<$Res> implements $FeelsLikeCopyWith<$Res> {
  factory _$$_FeelsLikeCopyWith(
          _$_FeelsLike value, $Res Function(_$_FeelsLike) then) =
      __$$_FeelsLikeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? day, double? night, double? eve, double? morn});
}

/// @nodoc
class __$$_FeelsLikeCopyWithImpl<$Res>
    extends _$FeelsLikeCopyWithImpl<$Res, _$_FeelsLike>
    implements _$$_FeelsLikeCopyWith<$Res> {
  __$$_FeelsLikeCopyWithImpl(
      _$_FeelsLike _value, $Res Function(_$_FeelsLike) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_$_FeelsLike(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      night: freezed == night
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double?,
      eve: freezed == eve
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double?,
      morn: freezed == morn
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_FeelsLike implements _FeelsLike {
  const _$_FeelsLike({this.day, this.night, this.eve, this.morn});

  factory _$_FeelsLike.fromJson(Map<String, dynamic> json) =>
      _$$_FeelsLikeFromJson(json);

  @override
  final double? day;
  @override
  final double? night;
  @override
  final double? eve;
  @override
  final double? morn;

  @override
  String toString() {
    return 'FeelsLike(day: $day, night: $night, eve: $eve, morn: $morn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeelsLike &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.night, night) || other.night == night) &&
            (identical(other.eve, eve) || other.eve == eve) &&
            (identical(other.morn, morn) || other.morn == morn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, night, eve, morn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeelsLikeCopyWith<_$_FeelsLike> get copyWith =>
      __$$_FeelsLikeCopyWithImpl<_$_FeelsLike>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeelsLikeToJson(
      this,
    );
  }
}

abstract class _FeelsLike implements FeelsLike {
  const factory _FeelsLike(
      {final double? day,
      final double? night,
      final double? eve,
      final double? morn}) = _$_FeelsLike;

  factory _FeelsLike.fromJson(Map<String, dynamic> json) =
      _$_FeelsLike.fromJson;

  @override
  double? get day;
  @override
  double? get night;
  @override
  double? get eve;
  @override
  double? get morn;
  @override
  @JsonKey(ignore: true)
  _$$_FeelsLikeCopyWith<_$_FeelsLike> get copyWith =>
      throw _privateConstructorUsedError;
}

Temp _$TempFromJson(Map<String, dynamic> json) {
  return _Temp.fromJson(json);
}

/// @nodoc
mixin _$Temp {
  double? get day => throw _privateConstructorUsedError;
  double? get min => throw _privateConstructorUsedError;
  double? get max => throw _privateConstructorUsedError;
  double? get night => throw _privateConstructorUsedError;
  double? get eve => throw _privateConstructorUsedError;
  double? get morn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TempCopyWith<Temp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempCopyWith<$Res> {
  factory $TempCopyWith(Temp value, $Res Function(Temp) then) =
      _$TempCopyWithImpl<$Res, Temp>;
  @useResult
  $Res call(
      {double? day,
      double? min,
      double? max,
      double? night,
      double? eve,
      double? morn});
}

/// @nodoc
class _$TempCopyWithImpl<$Res, $Val extends Temp>
    implements $TempCopyWith<$Res> {
  _$TempCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
      night: freezed == night
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double?,
      eve: freezed == eve
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double?,
      morn: freezed == morn
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TempCopyWith<$Res> implements $TempCopyWith<$Res> {
  factory _$$_TempCopyWith(_$_Temp value, $Res Function(_$_Temp) then) =
      __$$_TempCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? day,
      double? min,
      double? max,
      double? night,
      double? eve,
      double? morn});
}

/// @nodoc
class __$$_TempCopyWithImpl<$Res> extends _$TempCopyWithImpl<$Res, _$_Temp>
    implements _$$_TempCopyWith<$Res> {
  __$$_TempCopyWithImpl(_$_Temp _value, $Res Function(_$_Temp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_$_Temp(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
      night: freezed == night
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double?,
      eve: freezed == eve
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double?,
      morn: freezed == morn
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Temp implements _Temp {
  const _$_Temp(
      {this.day, this.min, this.max, this.night, this.eve, this.morn});

  factory _$_Temp.fromJson(Map<String, dynamic> json) => _$$_TempFromJson(json);

  @override
  final double? day;
  @override
  final double? min;
  @override
  final double? max;
  @override
  final double? night;
  @override
  final double? eve;
  @override
  final double? morn;

  @override
  String toString() {
    return 'Temp(day: $day, min: $min, max: $max, night: $night, eve: $eve, morn: $morn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Temp &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.night, night) || other.night == night) &&
            (identical(other.eve, eve) || other.eve == eve) &&
            (identical(other.morn, morn) || other.morn == morn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, min, max, night, eve, morn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TempCopyWith<_$_Temp> get copyWith =>
      __$$_TempCopyWithImpl<_$_Temp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TempToJson(
      this,
    );
  }
}

abstract class _Temp implements Temp {
  const factory _Temp(
      {final double? day,
      final double? min,
      final double? max,
      final double? night,
      final double? eve,
      final double? morn}) = _$_Temp;

  factory _Temp.fromJson(Map<String, dynamic> json) = _$_Temp.fromJson;

  @override
  double? get day;
  @override
  double? get min;
  @override
  double? get max;
  @override
  double? get night;
  @override
  double? get eve;
  @override
  double? get morn;
  @override
  @JsonKey(ignore: true)
  _$$_TempCopyWith<_$_Temp> get copyWith => throw _privateConstructorUsedError;
}

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  int? get id => throw _privateConstructorUsedError;
  String? get main => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call({int? id, String? main, String? description, String? icon});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$_WeatherCopyWith(
          _$_Weather value, $Res Function(_$_Weather) then) =
      __$$_WeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? main, String? description, String? icon});
}

/// @nodoc
class __$$_WeatherCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$_Weather>
    implements _$$_WeatherCopyWith<$Res> {
  __$$_WeatherCopyWithImpl(_$_Weather _value, $Res Function(_$_Weather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$_Weather(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Weather implements _Weather {
  const _$_Weather({this.id, this.main, this.description, this.icon});

  factory _$_Weather.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherFromJson(json);

  @override
  final int? id;
  @override
  final String? main;
  @override
  final String? description;
  @override
  final String? icon;

  @override
  String toString() {
    return 'Weather(id: $id, main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Weather &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, main, description, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      __$$_WeatherCopyWithImpl<_$_Weather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {final int? id,
      final String? main,
      final String? description,
      final String? icon}) = _$_Weather;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$_Weather.fromJson;

  @override
  int? get id;
  @override
  String? get main;
  @override
  String? get description;
  @override
  String? get icon;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}
