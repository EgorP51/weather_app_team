import 'package:flutter/material.dart';

class DailyForecastRowWidget extends StatelessWidget {
  const DailyForecastRowWidget({
    super.key,
    required this.dayOfWeek,
    required this.icon,
    required this.temperatureMin,
    required this.temperatureMax,
  });

  final String dayOfWeek;
  final IconData icon;
  final int temperatureMin;
  final int temperatureMax;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(dayOfWeek)),
        Expanded(child: Icon(icon)),
        Expanded(child: Text('$temperatureMin-----$temperatureMax')),
      ],
    );
  }
}
