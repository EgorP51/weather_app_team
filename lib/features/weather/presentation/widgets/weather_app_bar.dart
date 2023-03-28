import 'package:flutter/material.dart';
import 'package:weather_app_team/features/weather/data/models/weather_model.dart';
import 'package:weather_app_team/features/weather/presentation/constants.dart';

class WeatherAppBar extends StatelessWidget {
  const WeatherAppBar({
    super.key,
    required this.weatherModelForToday,
    required this.cityName,
  });

  final ListElement weatherModelForToday;
  final String cityName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          cityName,
          style: cityNameTextStyle,
        ),
        Text(
          '${weatherModelForToday.temp!.day!.toStringAsFixed(0)}°',
          style: temperatureAppBarTextStyle,
        ),
        Text(
          weatherModelForToday.weather![0].description!,
          style: weatherDescriptionAppBarTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'H: ${weatherModelForToday.temp!.max!.toStringAsFixed(0)}°',
              style: minMaxTemparatureAppBarTextStyle,
            ),
            const SizedBox(width: 10),
            Text(
              'L: ${weatherModelForToday.temp!.min!.toStringAsFixed(0)}°',
              style: minMaxTemparatureAppBarTextStyle,
            ),
          ],
        ),
      ],
    );
  }
}
