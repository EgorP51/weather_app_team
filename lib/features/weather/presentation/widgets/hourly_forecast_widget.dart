import 'package:flutter/material.dart';
import 'package:weather_app_team/features/weather/presentation/constants.dart';
import 'package:weather_app_team/features/weather/presentation/widgets/hourly_forecast_column_widget.dart';

class HourlyForecastWidget extends StatelessWidget {
  const HourlyForecastWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Text(
              weatherDescription,
              style: weatherDescriptionTextStyle,
            ),
            const Divider(),
            Row(
              children: const [
                HourlyForecastColumnWidget(
                  hour: 'now',
                  icon: Icons.sunny,
                  temperature: '18',
                ),
                HourlyForecastColumnWidget(
                  hour: '17',
                  icon: Icons.sunny,
                  temperature: '17',
                ),
                HourlyForecastColumnWidget(
                  hour: '18',
                  icon: Icons.cloud,
                  temperature: '15',
                ),
                HourlyForecastColumnWidget(
                  hour: '19',
                  icon: Icons.cloud,
                  temperature: '13',
                ),
                HourlyForecastColumnWidget(
                  hour: '20',
                  icon: Icons.cloud,
                  temperature: '12',
                ),
                HourlyForecastColumnWidget(
                  hour: '21',
                  icon: Icons.cloud,
                  temperature: '10',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
