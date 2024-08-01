import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weatherrr/features/models/weather.dart';

Future<Weather> WeatherRepo(double lat,double lon) async {
  const String API_KEY = '06c5f52b73a04122884c774259620c8d';
  String latStr = lat.toString();
  String lonStr = lon.toString();
  final response = await http.get(Uri.parse(
      'https://api.weatherbit.io/v2.0/current?lat=$latStr&lon=$lonStr&lang=ru&key=$API_KEY&include=minutely'));

  if (response.statusCode == 200) {
    return Weather.fromJson(json.decode(response.body)['data'][0]);
  } else {
    throw Exception('Failed to load weather data');
  }
}