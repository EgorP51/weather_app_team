import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_team/features/weather/data/models/weather_model.dart';
import 'package:weather_app_team/features/weather/domain/cubit/weather_cubit.dart';
import 'package:weather_app_team/features/weather/domain/cubit/weather_state.dart';

import 'package:weather_app_team/features/weather/presentation/constants.dart';
import 'package:weather_app_team/features/weather/presentation/screens/weather_screen.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherCubit, WeatherState>(listener: (context, state) {
      // do stuff here based on BlocA's state
    }, builder: (BuildContext context, WeatherState state) {
      return state.map(
        initial: (state) => BodyWeather(),
        loading: (_) => const Center(child: CircularProgressIndicator()),
        loaded: (state) => BodyWeather(weather: state.weatherModel),
        error: (_) => BodyWeather(),
      );
    });
  }
}

class BodyWeather extends StatelessWidget {
  BodyWeather({super.key, this.weather});

  WeatherModel? weather;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            const Text(
              'Weather',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            CupertinoTextField(
              prefix: const Icon(Icons.search),
              placeholder: 'Search for a city or airport',
              suffix: TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: NetworkImage(weatherCardBackgroundImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: weather == null
                  ? null
                  : Card(
                      margin: EdgeInsetsDirectional.zero,
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'My location',
                                  style: TextStyle(fontSize: 30),
                                ),
                                Text(
                                  '10°',
                                  style: TextStyle(fontSize: 40),
                                ),
                              ],
                            ),
                            const SizedBox(height: 50),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Mostly Cloudy'),
                                Text('H:15° L: 4°'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
