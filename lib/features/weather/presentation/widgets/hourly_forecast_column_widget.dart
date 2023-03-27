import 'package:flutter/material.dart';

class HourlyForecastColumnWidget extends StatelessWidget {
  const HourlyForecastColumnWidget({
    super.key,
    required this.hour,
    required this.icon,
    required this.temperature,
  });

  final String hour;
  final IconData icon;
  final String temperature;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(hour),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Icon(icon),
          ),
          Text('$temperature°'),
        ],
      ),
    );
  }
}
