import 'package:coding_hack_weather_assignment/app.dart';
import 'package:coding_hack_weather_assignment/boxes.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initDatabase();
  runApp(const App());
}
