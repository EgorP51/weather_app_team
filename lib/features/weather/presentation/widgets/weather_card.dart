import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({
    super.key,
    required this.titleIcon,
    required this.titleText,
    required this.body,
    this.bottomText,
  });

  final IconData titleIcon;
  final String titleText;
  final Widget body;
  final String? bottomText;

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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(titleIcon),
                Text(titleText),
              ],
            ),
            body,
            const SizedBox(height: 50),
            Text(bottomText ?? ''),
          ],
        ),
      ),
    );
  }
}
