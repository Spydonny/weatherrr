import 'package:flutter/material.dart';

class WeatherCode {
  Map<int, WeatherCondition> weather = {
    200: WeatherCondition(name: "Гроза с небольшим дождем", icon: const Icon(Icons.thunderstorm)),
    201: WeatherCondition(name: "Гроза с дождем", icon: const Icon(Icons.thunderstorm)),
    202: WeatherCondition(name: "Гроза с сильным дождем", icon: const Icon(Icons.thunderstorm)),
    230: WeatherCondition(name: "Гроза с небольшим моросящим дождем", icon: const Icon(Icons.thunderstorm)),
    231: WeatherCondition(name: "Гроза с моросящим дождем", icon: const Icon(Icons.thunderstorm)),
    232: WeatherCondition(name: "Гроза с сильным моросящим дождем", icon: const Icon(Icons.thunderstorm)),
    233: WeatherCondition(name: "Гроза с градом", icon: const Icon(Icons.ac_unit)),
    300: WeatherCondition(name: "Небольшой моросящий дождь", icon: const Icon(Icons.grain)),
    301: WeatherCondition(name: "Моросящий дождь", icon: const Icon(Icons.grain)),
    302: WeatherCondition(name: "Сильный моросящий дождь", icon: const Icon(Icons.grain)),
    500: WeatherCondition(name: "Небольшой дождь", icon: const Icon(Icons.beach_access)),
    501: WeatherCondition(name: "Умеренный дождь", icon: const Icon(Icons.beach_access)),
    502: WeatherCondition(name: "Сильный дождь", icon: const Icon(Icons.beach_access)),
    511: WeatherCondition(name: "Ледяной дождь", icon: const Icon(Icons.ac_unit)),
    520: WeatherCondition(name: "Небольшой ливневый дождь", icon: const Icon(Icons.beach_access)),
    521: WeatherCondition(name: "Ливневый дождь", icon: const Icon(Icons.beach_access)),
    522: WeatherCondition(name: "Сильный ливневый дождь", icon: const Icon(Icons.beach_access)),
    600: WeatherCondition(name: "Небольшой снег", icon: const Icon(Icons.ac_unit)),
    601: WeatherCondition(name: "Снег", icon: const Icon(Icons.ac_unit)),
    602: WeatherCondition(name: "Сильный снег", icon: const Icon(Icons.ac_unit)),
    610: WeatherCondition(name: "Снег с дождем", icon: const Icon(Icons.ac_unit)),
    611: WeatherCondition(name: "Мокрый снег", icon: const Icon(Icons.ac_unit)),
    612: WeatherCondition(name: "Сильный мокрый снег", icon: const Icon(Icons.ac_unit)),
    621: WeatherCondition(name: "Снегопад", icon: const Icon(Icons.ac_unit)),
    622: WeatherCondition(name: "Сильный снегопад", icon: const Icon(Icons.ac_unit)),
    623: WeatherCondition(name: "Снегопад", icon: const Icon(Icons.ac_unit)),
    700: WeatherCondition(name: "Туман", icon: const Icon(Icons.blur_on)),
    711: WeatherCondition(name: "Дым", icon: const Icon(Icons.smoke_free)),
    721: WeatherCondition(name: "Мгла", icon: const Icon(Icons.blur_on)),
    731: WeatherCondition(name: "Песок/пыль", icon: const Icon(Icons.blur_on)),
    741: WeatherCondition(name: "Туман", icon: const Icon(Icons.blur_on)),
    751: WeatherCondition(name: "Ледяной туман", icon: const Icon(Icons.blur_on)),
    800: WeatherCondition(name: "Ясное небо", icon: const Icon(Icons.wb_sunny)),
    801: WeatherCondition(name: "Малооблачно", icon: const Icon(Icons.cloud)),
    802: WeatherCondition(name: "Рассеянные облака", icon: const Icon(Icons.cloud_queue)),
    803: WeatherCondition(name: "Переменная облачность", icon: const Icon(Icons.cloud)),
    804: WeatherCondition(name: "Пасмурно", icon: const Icon(Icons.cloud)),
    900: WeatherCondition(name: "Неизвестные осадки", icon: const Icon(Icons.help_outline)),
  };
}

class WeatherCondition {
  final String name;
  final Icon icon;

  WeatherCondition({
    required this.name,
    required this.icon,
  });
}
