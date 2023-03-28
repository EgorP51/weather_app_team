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
  final String icon;
  final String temperatureMin;
  final String temperatureMax;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(dayOfWeek.toString())),
        Expanded(child: Text(icon)),
        Expanded(child: Text('$temperatureMin-----$temperatureMax')),
      ],
    );
  }
}
