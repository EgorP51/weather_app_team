import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_team/features/weather/data/api/weather_provider.dart';
import 'package:weather_app_team/features/weather/domain/cubit/weather_cubit.dart';
import 'package:weather_app_team/features/weather/presentation/screens/choose_city_screen.dart';
import 'package:weather_app_team/features/weather/presentation/screens/weather_screen.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeatherCubit>(
      create: (_) =>
      WeatherCubit(weatherProvider: WeatherProvider())
        ..loadWeatherData(isCity: false),
      child: const WeatherWidget(),
    );
  }
}
