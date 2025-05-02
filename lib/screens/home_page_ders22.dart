import 'package:flutter/material.dart';
import 'package:ilkders/models/weather_model.dart';
import 'package:ilkders/services/weather_service.dart';

// <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
// <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
// bunları da android/app/src/main/AndroidManifest.xml dosyasına eklemek gerekiyor.

class HomePageDers22 extends StatefulWidget {
  const HomePageDers22({super.key});

  @override
  State<HomePageDers22> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageDers22> {
  List<WeatherModel> _weathers = [];

  void _getWeatherData() async {
    _weathers = await WeatherService().getWeatherData();
    setState(() {});
  }

  @override
  void initState() {
    _getWeatherData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: _weathers.length,
          itemBuilder: (context, index) {
            final WeatherModel weather = _weathers[index];
            return Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Image.network(weather.ikon, width: 100),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 25),
                    child: Text(
                      "${weather.gun}\n ${weather.durum.toUpperCase()} ${weather.derece}°",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Min: ${weather.min} °"),
                          Text("Max: ${weather.max} °"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("Gece: ${weather.gece} °"),
                          Text("Nem: ${weather.nem}"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
