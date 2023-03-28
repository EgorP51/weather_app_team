import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_team/features/weather/domain/cubit/weather_cubit.dart';
import 'package:weather_app_team/features/weather/domain/cubit/weather_state.dart';

import 'package:weather_app_team/features/weather/presentation/constants.dart';
import 'package:weather_app_team/features/weather/presentation/screens/permissions_denied_tranition_error_screen.dart';
import 'package:weather_app_team/features/weather/presentation/screens/weather_screen.dart';

class ChooseCityScreen extends StatelessWidget {
  const ChooseCityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        return state.map(
            initial: (value) => const _Body(),
            loading: (value) => const Center(child: CircularProgressIndicator(backgroundColor: Colors.green),),
            loaded: (value) => WeatherScreen(weatherModel: value.weatherModel),
            error: (value) => const Scaffold(backgroundColor: Colors.redAccent,),
          permissionsDenied: (value) => const PermissionsDeniedTranitionErrorScreen(),
        );
    },
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

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
              prefix: IconButton(
                onPressed: (){
                  context.read<WeatherCubit>().useCityName(cityName: 'sdoivhasdiuvgaifuv');
                },
                icon: const Icon(Icons.search),
              ),
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
              child: LocationItemCard(),
            ),
          ],
        ),
      ),
    );
  }
}

class LocationItemCard extends StatelessWidget {
  const LocationItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsetsDirectional.zero,
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: (){
          context.read<WeatherCubit>().useUserLocation();
        },
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
    );
  }
}

