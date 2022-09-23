import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  String baseUrl = 'http://api.weatherapi.com/v1';
  String apiKey = 'bf82ce3a2c884cb0943225916221209';
  Future<WeatherModel?> getWeather({required String cityname}) async {
    WeatherModel? weather;
    try {
      Uri url =
        Uri.parse('$baseUrl/forecast.json?key=$apiKey&q=$cityname&days=7');
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
    weather = WeatherModel.fromJson(data);
    

      
    } catch (e) {
      print(e);
      
    }
        

        return weather;
  }
}
