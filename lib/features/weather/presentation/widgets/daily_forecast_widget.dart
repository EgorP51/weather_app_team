import 'package:flutter/material.dart';
import 'package:weather_app_team/features/weather/presentation/widgets/daily_forecast_row_widget.dart';

class DailyForecastWidget extends StatelessWidget {
  const DailyForecastWidget({
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
            Row(
              children: const [
                Icon(Icons.calendar_month),
                SizedBox(width: 5),
                Text('7-DAY FORECAST'),
              ],
            ),
            const Divider(),
            const DailyForecastRowWidget(
              dayOfWeek: 'Today',
              icon: Icons.sunny,
              temperatureMin: 4,
              temperatureMax: 10,
            ),
            const Divider(),
            const DailyForecastRowWidget(
              dayOfWeek: 'Today',
              icon: Icons.sunny,
              temperatureMin: 4,
              temperatureMax: 10,
            ),
            const Divider(),
            const DailyForecastRowWidget(
              dayOfWeek: 'Today',
              icon: Icons.sunny,
              temperatureMin: 4,
              temperatureMax: 10,
            ),
            const Divider(),
            const DailyForecastRowWidget(
              dayOfWeek: 'Today',
              icon: Icons.sunny,
              temperatureMin: 4,
              temperatureMax: 10,
            ),
          ],
        ),
      ),
    );
  }
}
