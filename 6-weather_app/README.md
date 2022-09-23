1- lib/main.dart:
        - main file to run app
        - calls for the provider above all screens
        - the app theme changes in the MaterialApp widget
2- lib/pages/home_page.dart:
        - AppBar contains title, action to navigate to seach_page.dart
        - body changes depending on data coming from api and app theme
3- lib/pages/search_page.dart:
        - takes the user input (cityname)
        - returns the cityname to the provider
4- pubspec.yaml  ==> packages used:
        - http: ^0.13.5
        - provider: ^6.0.3
        - assets:
            - assets/images/
5- lib/services/weather_services.dart:
        - api service created and only calls for the WeatherModel required data lib/models/weather_model.dart
6- lib/models/weather_odel.dart:
        - created WeatherModel for all data coming from API
        - get image function to get image suitable for the weather state
        - get themecolor function to change the app theme  depending on the weather state
7- lib/providers/weather_provider.dart:
        - provider model takes two argument weathermodel and cityname
        - used in search_page to apply chanes to home_page when data is submitted