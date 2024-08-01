import 'package:flutter/material.dart';
import 'package:weatherrr/features/repos/weather_repo.dart';
import 'package:weatherrr/features/models/weather.dart';
import 'package:weatherrr/ui/theme/theme.dart';
import 'package:weatherrr/ui/widget/weather_container.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: darkTheme,
      home: const MyHomePage(title: 'Weather'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late Future<Weather> futureWeather;
  late double lat = 40.7128;
  late double lon = -74.0060;

  @override
  void initState() {
    super.initState();
    futureWeather = _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Column(
          children: <Widget>[
            Text(widget.title),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: _setuskaman,
                      child: const Center(
                        child: Text('Усть-Каменогорск'),
                      )
                  ),
                  const SizedBox(width: 9),
                  ElevatedButton(
                      onPressed: _setnewyork,
                      child: const Center(
                        child: Text('Нью-Йорк'),
                      )
                  ),
                  const SizedBox(width: 9),
                  ElevatedButton(
                      onPressed: _setalmaty,
                      child: const Center(
                        child: Text('Алматы'),
                      )
                  ),
                  const SizedBox(width: 9),
                  ElevatedButton(
                      onPressed: _setastana,
                      child: const Center(
                        child: Text('Астана'),
                      )
                  ),
                  const SizedBox(width: 9),
                  ElevatedButton(
                    onPressed: _setaralsk,
                    child: const Center(
                      child: Text('Аральск'),
                    ),
                  ),
                  const SizedBox(width: 9),
                  ElevatedButton(
                    onPressed: _setparis,
                    child: const Center(
                      child: Text('Париж'),
                    ),
                  ),
                  const SizedBox(width: 9),
                  ElevatedButton(
                    onPressed: _setrome,
                    child: const Center(
                      child: Text('Рим'),
                    ),
                  ),
                  const SizedBox(width: 9),
                  ElevatedButton(
                    onPressed: _setbelgrade,
                    child: const Center(
                      child: Text('Белград'),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ),
      body: FutureBuilder<Weather>(
          future: futureWeather,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              final weather = snapshot.data!;
              return WeatherContainer(weather: weather);
            }
            return Container();
          }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _refreshWeather,
        tooltip: 'Get weather',
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<Weather> _fetchWeather() async {
    return await WeatherRepo(lat, lon);
  }

  void _refreshWeather() {
    setState(() {
      futureWeather = _fetchWeather();
    });
  }

  void _setuskaman() {
    setState(() {
      lat = 49.9684;
      lon = 82.6144;
      futureWeather = _fetchWeather();
    });
  }

  void _setalmaty() {
    setState(() {
      lat = 43.2220;
      lon = 76.8512;
      futureWeather = _fetchWeather();
    });
  }

  void _setastana() {
    setState(() {
      lat = 51.1694;
      lon = 71.4491;
      futureWeather = _fetchWeather();
    });
  }

  void _setnewyork() {
    setState(() {
      lat = 40.7128;
      lon = -74.0060;
      futureWeather = _fetchWeather();
    });
  }

  void _setaralsk() {
    setState(() {
      lat = 46.7996;
      lon = 61.6740;
      futureWeather = _fetchWeather();
    });
  }

  void _setparis() {
    setState(() {
      lat = 48.8566;
      lon = 2.3522;
      futureWeather = _fetchWeather();
    });
  }

  void _setrome() {
    setState(() {
      lat = 41.9028;
      lon = 12.4964;
      futureWeather = _fetchWeather();
    });
  }

  void _setbelgrade() {
    setState(() {
      lat = 44.7866;
      lon = 20.4489;
      futureWeather = _fetchWeather();
    });
  }

}
