import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF5B247A), Color(0xFF1B1464)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Text(
                "North America",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color:Colors.white70),
              ),
              Text(
                "Max: 24°  Min: 18°",
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              const SizedBox(height: 20),
              Text(
                "7-Days Forecasts",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white70),
              ),
              const SizedBox(height: 20),
              // 7-Days Forecast Row
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _forecastCard("Mon", "19°C", Icons.cloud),
                    _forecastCard("Tue", "18°C", Icons.cloud_queue),
                    _forecastCard("Wed", "18°C", Icons.cloud),
                    _forecastCard("Thu", "19°C", Icons.cloud),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Air Quality Section
              _infoCard("Air Quality", "3-Low Health Risk", Icons.air),
              const SizedBox(height: 20),
              // Sunrise & UV Index
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: _infoCard("Sunrise", "5:28 AM\nSunset: 7:25 PM",
                        Icons.wb_sunny),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: _infoCard("UV Index", "4 Moderate", Icons.wb_iridescent),
                  ),
                ],
              ),
              const Spacer(),
              // Bottom Navigation
              Icon(Icons.menu, size: 36, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }

  Widget _forecastCard(String day, String temp, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              day,
              style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
            ),
            Icon(icon, color: Colors.white, size: 36),
            Text(temp, style: TextStyle(color: Colors.white70)),
          ],
        ),
      ),
    );
  }

  Widget _infoCard(String title, String value, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.white70, size: 20),
              const SizedBox(width: 8),
              Text(
                title,
                style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
