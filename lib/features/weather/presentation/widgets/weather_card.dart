import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({
    super.key,
    required this.titleIcon,
    required this.titleText,
    required this.body,
  });

  final IconData titleIcon;
  final String titleText;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Card(
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
                  const SizedBox(width: 5),
                  Text(titleText),
                ],
              ),
              body,
            ],
          ),
        ),
      ),
    );
  }
}
