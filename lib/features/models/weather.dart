class Weather {
  final String cityName;
  final int temp;
  final int rh;
  final double windSpd;
  final String windCdirFull;
  final String sunrise;
  final String sunset;
  final int weather;

  Weather({
    required this.cityName,
    required this.temp,
    required this.rh,
    required this.windSpd,
    required this.windCdirFull,
    required this.sunrise,
    required this.sunset,
    required this.weather,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['city_name'],
      temp: json['temp'].toInt(),
      rh: json['rh'],
      windSpd: json['wind_spd'].toDouble(),
      windCdirFull: json['wind_cdir_full'],
      sunrise: json['sunrise'],
      sunset: json['sunset'],
      weather: json['weather']['code'],
    );
  }
}

