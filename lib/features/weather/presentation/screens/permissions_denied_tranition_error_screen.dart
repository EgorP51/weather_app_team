import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_team/features/weather/presentation/screens/choose_city_screen.dart';
import 'package:weather_app_team/features/weather/presentation/screens/weather_forecast_page.dart';

import '../../domain/cubit/weather_cubit.dart';

class PermissionsDeniedTranitionErrorScreen extends StatelessWidget {
  const PermissionsDeniedTranitionErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(size: 350),
              Text('ERRRRRRROOOOOOЛоооХХХХOORRRRRRRRRRRRRRRRRRRR'),
              Text('ТТТТТТТТТТТТТУУУУУУУУУУУУУТТТТТТТТТТ ПППррррррЯЯЯЯЯЯЯЯЯиммммммм ОШШШШииииииББкАААААаа'),
              Row(
                children: [
                  Text('ERRRrOOOr'),
                  ElevatedButton(onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => WeatherForecastPage(),));
                  }, child: Text('ErrrooooRRRRRЫЫЫЫ')),
                  Text('ERRrROOOOr')
                ],
              ),
              Row(
                children: [
                  Text('ErOr'),
                  ElevatedButton(onPressed: () {

                  }, child: Text('ЬуьуьуььуьуьЬ')),
                  Text('ERRRRrROOr'),
                ],
              ),
              Text('ERRRRRRROOOOOOЛоооХХХХOORRRRRRRRRRRRRRRRRRRR'),
              Text('ТТТТТТТТТТТТТУУУУУУУУУУУУУТТТТТТТТТТ ПППррррррЯЯЯЯЯЯЯЯЯиммммммм ОШШШШииииииББкАААААаа'),
            ],
          ),
        ),
      ),
    );
  }
}
