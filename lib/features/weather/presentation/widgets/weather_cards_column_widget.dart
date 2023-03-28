import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_team/features/weather/data/models/weather_model.dart';

import 'package:weather_app_team/features/weather/presentation/constants.dart';
import 'package:weather_app_team/features/weather/presentation/widgets/weather_card.dart';

class WeatherCardsColumnWidget extends StatelessWidget {
  const WeatherCardsColumnWidget({
    super.key,
    required this.weatherModelForToday,
  });

  final ListElement weatherModelForToday;

  @override
  Widget build(BuildContext context) {
    DateTime srTime = DateTime.fromMillisecondsSinceEpoch(
      (weatherModelForToday.sunrise as int) * 1000,
    );
    String sunriseTime =
        srTime.hour.toString() + ":" + srTime.minute.toString();

    DateTime ssTime = DateTime.fromMillisecondsSinceEpoch(
      (weatherModelForToday.sunset as int) * 1000,
    );
    String sunsetTime = ssTime.hour.toString() + ":" + ssTime.minute.toString();

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: WeatherCard(
                titleIcon: Icons.thermostat,
                titleText: 'Feels like',
                body: Text(
                  '${weatherModelForToday.feelsLike!.day!.toStringAsFixed(0)}°',
                  style: weatherCardBodyTextStyle,
                ),
              ),
            ),
            Expanded(
              child: WeatherCard(
                titleIcon: Icons.wind_power,
                titleText: 'Wind',
                body: Text(
                  '${weatherModelForToday.speed}\nm/s',
                  style: weatherCardBodyTextStyle,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: WeatherCard(
                titleIcon: CupertinoIcons.sunset,
                titleText: 'Sunset',
                body: Text(
                  sunsetTime,
                  style: weatherCardBodyTextStyle,
                ),
              ),
            ),
            Expanded(
              child: WeatherCard(
                titleIcon: CupertinoIcons.sunrise,
                titleText: 'Sunrise',
                body: Text(
                  sunriseTime,
                  style: weatherCardBodyTextStyle,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: WeatherCard(
                titleIcon: CupertinoIcons.drop_fill,
                titleText: 'Humidity',
                body: Text(
                  '${weatherModelForToday.humidity}%',
                  style: weatherCardBodyTextStyle,
                ),
              ),
            ),
            Expanded(
              child: WeatherCard(
                titleIcon: Icons.speed_outlined,
                titleText: 'Pressure',
                body: Text(
                  '${weatherModelForToday.pressure}\nhPa',
                  style: weatherCardBodyTextStyle,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
