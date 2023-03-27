import 'package:flutter/material.dart';

import 'package:weather_app_team/features/weather/presentation/constants.dart';
import 'package:weather_app_team/features/weather/presentation/widgets/weather_card.dart';

class WeatherCardsColumnWidget extends StatelessWidget {
  const WeatherCardsColumnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Expanded(
              child: WeatherCard(
                titleIcon: Icons.thermostat,
                titleText: 'Feels like',
                body: Text(
                  '16°',
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
                bottomText: 'Wind is make it feel cooler.',
              ),
            ),
            Expanded(
              child: WeatherCard(
                titleIcon: Icons.wind_power,
                titleText: 'Wind',
                body: Text(
                  '5',
                  style: weatherCardBodyTextStyle,
                ),
                bottomText: 'The wind is blowing.',
              ),
            ),
          ],
        ),
        Row(
          children: const [
            Expanded(
              child: WeatherCard(
                titleIcon: Icons.thermostat,
                titleText: 'Feels like',
                body: Text(
                  '16°',
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
                bottomText: 'Wind is make it feel cooler.',
              ),
            ),
            Expanded(
              child: WeatherCard(
                titleIcon: Icons.wind_power,
                titleText: 'Wind',
                body: Text(
                  '5',
                  style: weatherCardBodyTextStyle,
                ),
                bottomText: 'The wind is blowing.',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
