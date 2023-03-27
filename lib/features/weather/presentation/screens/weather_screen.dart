import 'package:flutter/material.dart';
import 'package:weather_app_team/features/weather/presentation/constants.dart';
import 'package:weather_app_team/features/weather/presentation/widgets/daily_forecast_widget.dart';
import 'package:weather_app_team/features/weather/presentation/widgets/hourly_forecast_widget.dart';
import 'package:weather_app_team/features/weather/presentation/widgets/weather_card.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://i.pinimg.com/originals/4e/b5/be/4eb5be4deef02f33df2d9e807994e31c.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              const Text(
                'Kyiv',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              //temperature
              const Text(
                '18°',
                style: TextStyle(
                  fontSize: 80,
                ),
              ),
              const Text(
                'Sunny',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'H: 18°',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'L: 18°',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(height: 50),
                  const HourlyForecastWidget(),
                  const SizedBox(height: 50),
                  const DailyForecastWidget(),
                  const SizedBox(height: 10),
                  const WeatherCardsColumnWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
