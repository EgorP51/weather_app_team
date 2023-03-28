import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app_team/features/weather/presentation/screens/weather_forecast_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const WeatherForecastPage(),
    );
  }
}
