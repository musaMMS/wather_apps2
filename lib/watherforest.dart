
import 'package:flutter/material.dart';
import 'package:wather_apps2/weather_screen.dart';

class WeatherForecastApp extends StatelessWidget {
  const WeatherForecastApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherForecastScreen(),
    );
  }
}

class WeatherForecastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF5B247A), Color(0xFF1B1464)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 60), // Padding for the status bar
            // Weather Icon, Temperature, and Description
            Column(
              children: [
                // Weather Icon
                Image.asset(
                  'assets/images/Weather.png', // Replace with your weather icon
                  height: 100,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 10),
                // Temperature
                const Text(
                  "19°",
                  style: TextStyle(
                    fontSize: 64,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                // Description
                const Text(
                  "Precipitations",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white70,
                  ),
                ),
                const Text(
                  "Max: 24°   Min: 18°",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // House Illustration
            Image.asset(
              'assets/images/House.png', // Replace with your house illustration
              height: 150,
              fit: BoxFit.contain,
            ),
            const SizedBox(height:1),
            // Bottom Forecast Section
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF3A287D),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    // Date and Title Row
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Today",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "July, 21",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Hourly Forecast Row
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: forecastItem("15.00", "19°C", Icons.cloud)),
                            Expanded(child: forecastItem("16.00", "18°C", Icons.cloud_queue)),
                            Expanded(child: forecastItem("17.00", "18°C", Icons.cloudy_snowing)),
                            Expanded(child: forecastItem("18.00", "18°C", Icons.water)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Bottom Navigation Row
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              // Location action
                            },
                            icon: const Icon(Icons.location_on),
                            color: Colors.white,
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>WeatherScreen())); // Menu action
                            },
                            icon: const Icon(Icons.add_circle_outline),
                            color: Colors.white,
                          ),
                          IconButton(
                            onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>WeatherScreen())); // Menu action
                            },
                            icon: const Icon(Icons.menu),
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget for a single forecast item
  Widget forecastItem(String time, String temp, IconData icon) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          time,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white70,
          ),
        ),
        const SizedBox(height: 8),
        Icon(
          icon,
          color: Colors.white,
          size: 30,
        ),
        const SizedBox(height: 8),
        Text(
          temp,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
