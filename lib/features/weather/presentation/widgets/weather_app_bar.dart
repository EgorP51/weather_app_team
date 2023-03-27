import 'package:flutter/material.dart';

class WeatherAppBar extends StatelessWidget {
  const WeatherAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Kyiv',
          style: TextStyle(
            fontSize: 40,
          ),
        ),
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
      ],
    );
  }
}
