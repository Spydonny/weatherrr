import 'package:flutter/material.dart';
import 'package:weatherrr/features/models/weather.dart';
import 'package:weatherrr/features/models/weather_code.dart';

class WeatherContainer extends StatelessWidget {
  const WeatherContainer({super.key, required this.weather});
  final Weather weather;

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.sizeOf(context).width;
    final screenHeight = MediaQuery.sizeOf(context).height;
    final theme = Theme.of(context);
    final weatherCode = WeatherCode().weather[weather.weather]!;

    return Center(
      child: Container(
        height: screenHeight*0.25 ,
        width: screenWidth*0.85,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).colorScheme.onPrimaryContainer
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 2,),
            Text('Ваш город-${weather.cityName}', style: theme.textTheme.titleMedium),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const SizedBox(width: 20),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      weatherCode.icon,
                      Text(weatherCode.name, style: theme.textTheme.titleSmall,),
                      Text('${weather.temp}°C', style: theme.textTheme.titleLarge,),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('Влажность-${weather.rh}\nВетер-${weather.windSpd}м/с\n${weather.windCdirFull}\n'
                            'Восход-${weather.sunrise}\nЗакат-${weather.sunset}', style: theme.textTheme.titleSmall,)
                      ],
                    )
                ),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 3,)
          ],
        ),
      ),
    );
  }
}
