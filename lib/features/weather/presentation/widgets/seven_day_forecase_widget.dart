import 'package:flutter/material.dart';
import 'package:weather_app_team/core/utils/weather_icon_utils.dart';
import 'package:weather_app_team/features/weather/data/models/weather_model.dart';
import 'package:weather_app_team/features/weather/presentation/widgets/daily_forecast_row_widget.dart';

class SevenDaysForecast extends StatelessWidget {
  const SevenDaysForecast({
    super.key,
    required this.weatherModel,
  });

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: weatherModel.list!.length,
      itemBuilder: (context, index) {
        DateTime tsdate = DateTime.fromMillisecondsSinceEpoch(
          (weatherModel.list![index].dt as int) * 1000,
        );
        String datetime = tsdate.year.toString() +
            "/" +
            tsdate.month.toString() +
            "/" +
            tsdate.day.toString();
        return DailyForecastRowWidget(
          dayOfWeek: datetime,
          icon: WeatherIcon()
              .getWeatherIcon(weatherModel.list![index].weather![0].id!),
          temperatureMin:
              '${weatherModel.list![index].temp!.min!.toStringAsFixed(0)}°',
          temperatureMax:
              '${weatherModel.list![index].temp!.max!.toStringAsFixed(0)}°',
        );
      },
    );
  }
}
