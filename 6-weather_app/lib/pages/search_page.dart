import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/pages/services/weather_services.dart';
import 'package:weather_app/providers/weather_provider.dart';


class SearchPage extends StatelessWidget {
   SearchPage({super.key});

   String? cityname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Your City'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            onChanged:(data) {
              cityname= data;
            }, 
            onSubmitted: (data) async{
              cityname= data;
              WeatherService service = WeatherService();
              WeatherModel? weather = await service.getWeather(cityname: cityname!);
              Provider.of<WeatherProvider>(context , listen: false).weatherData = weather;
              Provider.of<WeatherProvider>(context , listen: false).cityName = cityname;
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 32 , horizontal: 24),
              label: Text('Search'),
              suffixIcon: GestureDetector(
                onTap: () async{
                  WeatherService service = WeatherService();
              WeatherModel? weather = await service.getWeather(cityname: cityname!);
              Provider.of<WeatherProvider>(context , listen: false).weatherData = weather;
              Provider.of<WeatherProvider>(context , listen: false).cityName = cityname;
              Navigator.pop(context);
                },
                child: Icon(Icons.search)),
              border: OutlineInputBorder(),
              hintText: 'Inter Your City',
              
            ),
          ),
        ),
      ),
    );
  }
}

