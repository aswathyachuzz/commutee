import 'package:commute/screens/settings.dart';
import 'package:commute/screens/tripplanner.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TripPlanner(),
    );
  }
}
