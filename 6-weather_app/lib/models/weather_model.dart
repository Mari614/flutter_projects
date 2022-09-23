import 'package:flutter/material.dart';

class WeatherModel {
  String? date;
  double? temp;
  double? maxTemp;
  double? minTemp;
  String? weatherStateName;

  WeatherModel(
      {required this.date,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherStateName});

  //ToDo named constractor (fromjson) then made it factory constractor to return any constractor to it 
  factory WeatherModel.fromJson(dynamic data) {
    var jsonData = data['forecast']['forecastday'][0]['day'];
    // /////////// data fornamed constructor withouth factory
    // date = data['location']['localtime'];
    // temp = jsonData['avgtemp_c'];
    // maxTemp = jsonData['maxtemp_c'];
    // minTemp = jsonData['mintemp_c'];
    // weatherStateName = jsonData['condition']['text'];
    return WeatherModel(
        date: data['location']['localtime'],
        temp: jsonData['avgtemp_c'],
        maxTemp: jsonData['maxtemp_c'],
        minTemp: jsonData['mintemp_c'],
        weatherStateName: jsonData['condition']['text']);
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'temp = $temp , mintemp= $minTemp , date= $date';
  }

  String getImage() {
    if (weatherStateName == 'Clear' || weatherStateName == 'Light Cloud') {
      return 'assets/images/clear.png';
    } else if (weatherStateName == 'Sleet' ||
        weatherStateName == 'Snow' ||
        weatherStateName == 'Hail') {
      return 'assets/images/snow.png';
    } else if (weatherStateName == 'Heavy Cloud' || weatherStateName == 'Partly cloudy'){
      return 'assets/images/cloudy.png';
    } else if (weatherStateName == 'Light Rain' ||
        weatherStateName == 'Heavy Rain' ||
        weatherStateName == 'Showers') {
        return 'assets/images/rainy.png';
  } else if (weatherStateName == 'Thunderstorm' || weatherStateName == 'Thunder') {
    return 'assets/images/thunderstorm.png';
  } 
  else {
    return 'assets/images/clear.png';
  }
}



MaterialColor getThemeColor() {
    if (weatherStateName == 'Clear' || weatherStateName == 'Light Cloud') {
      return Colors.orange;
    } else if (weatherStateName == 'Sleet' ||
        weatherStateName == 'Snow' ||
        weatherStateName == 'Hail') {
      return Colors.cyan;
    } else if (weatherStateName == 'Heavy Cloud' || weatherStateName == 'Partly cloudy'){
      return Colors.blueGrey;
    } else if (weatherStateName == 'Light Rain' ||
        weatherStateName == 'Heavy Rain' ||
        weatherStateName == 'Showers') {
        return Colors.blue;
  } else if (weatherStateName == 'Thunderstorm' || weatherStateName == 'Thunder') {
    return Colors.grey;
  } 
  else {
    return Colors.orange;
  }
}
}