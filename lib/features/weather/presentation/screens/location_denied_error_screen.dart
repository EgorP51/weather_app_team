import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LocationDeniedErrorScreen extends StatelessWidget {
  const LocationDeniedErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple,
              Colors.deepOrange,
            ],
          ),
        ),
        child: Scaffold(
          body: Center(
            child: Text('Location denied.'),
          ),
        ));
  }
}
