import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app_team/features/weather/data/models/weather_model.dart';
import 'package:weather_app_team/features/weather/presentation/constants.dart';
import 'package:weather_app_team/features/weather/presentation/screens/choose_city_screen.dart';

import 'package:weather_app_team/features/weather/presentation/widgets/daily_forecast_widget.dart';
import 'package:weather_app_team/features/weather/presentation/widgets/hourly_forecast_widget.dart';
import 'package:weather_app_team/features/weather/presentation/widgets/weather_app_bar.dart';
import 'package:weather_app_team/features/weather/presentation/widgets/weather_cards_column_widget.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({required this.weatherModel, super.key});
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.red,
            Colors.deepPurple,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          bottom: false,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                toolbarHeight: 250,
                stretch: true,
                expandedHeight: 300,
                title: WeatherAppBar(
                  cityName: weatherModel.city!.name!,
                  weatherModelForToday: weatherModel.list!.first,
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    DailyForecastWidget(
                      weatherModel: weatherModel,
                    ),
                    WeatherCardsColumnWidget(
                        weatherModelForToday: weatherModel.list!.first),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
