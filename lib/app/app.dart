import 'package:flutter/material.dart';

import 'package:weather_app_team/features/weather/presentation/screens/weather_screen.dart';
import 'package:weather_app_team/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const WeatherScreen(),
    );
  }
}
