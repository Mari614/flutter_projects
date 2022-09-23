import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/pages/home_page.dart';
import 'package:weather_app/providers/weather_provider.dart';

void main() {
  //! main provider to make changes from search on homepage UI
  runApp(ChangeNotifierProvider(
      create: (context) {
        return WeatherProvider();
      },
      child: WeatherApp()));
}

class WeatherApp extends StatelessWidget {
  WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //? themedata to change page thee whenever there is data
      theme: ThemeData(
          primarySwatch: Provider.of<WeatherProvider>(context).weatherData == null? Colors.blue: Provider.of<WeatherProvider>(context).weatherData!.getThemeColor()),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
