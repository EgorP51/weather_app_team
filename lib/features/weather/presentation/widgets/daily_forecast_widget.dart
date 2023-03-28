import 'package:flutter/material.dart';
import 'package:weather_app_team/core/utils/weather_icon_utils.dart';
import 'package:weather_app_team/features/weather/data/models/weather_model.dart';

import 'package:weather_app_team/features/weather/presentation/widgets/daily_forecast_row_widget.dart';
import 'package:weather_app_team/features/weather/presentation/widgets/seven_day_forecase_widget.dart';

class DailyForecastWidget extends StatelessWidget {
  const DailyForecastWidget({
    super.key,
    required this.weatherModel,
  });

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: SevenDaysForecast(
                weatherModel: weatherModel,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
