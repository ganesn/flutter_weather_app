


import 'dart:convert';
import 'dart:io';

import 'package:weather_app/model/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherApiClient {
  Future<Weather>? getCurrentWeather(String? location) async{
    print("Called Api");
    var endpoint = Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$location&appid=371146d0a4a068d699a6bc7c54c2e7fc&units=metric");
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(Weather.fromJSON(body));

    return Weather.fromJSON(body);

  }
}