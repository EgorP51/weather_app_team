import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app_team/features/weather/presentation/constants.dart';

import 'package:weather_app_team/features/weather/presentation/widgets/daily_forecast_widget.dart';
import 'package:weather_app_team/features/weather/presentation/widgets/hourly_forecast_widget.dart';
import 'package:weather_app_team/features/weather/presentation/widgets/weather_app_bar.dart';
import 'package:weather_app_team/features/weather/presentation/widgets/weather_cards_column_widget.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(weatherScreenBackgroundImage),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          bottom: false,
          child: CustomScrollView(
            slivers: [
              const SliverAppBar(
                backgroundColor: Colors.transparent,
                toolbarHeight: 250,
                stretch: true,
                expandedHeight: 300,
                title: WeatherAppBar(),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const HourlyForecastWidget(),
                    const DailyForecastWidget(),
                    const SizedBox(height: 10),
                    const WeatherCardsColumnWidget(),
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
