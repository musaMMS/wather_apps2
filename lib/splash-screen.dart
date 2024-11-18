import 'package:flutter/material.dart';
import 'package:wather_apps2/watherforest.dart';


class WeatherSambol extends StatelessWidget {
  const WeatherSambol({super.key});

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Cloud and Sun Icon
              Container(
                height: 150,
                child: Image.asset(
                  'assets/images/Weather.png', // Replace with the actual cloud and sun icon URL
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20),
              // Weather Text
              const Text(
                "Weather",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Text(
                "ForeCasts",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFEBF00),
                ),
              ),
              const SizedBox(height: 40),
              // Get Start Button
              ElevatedButton(
                onPressed: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WeatherForecastScreen()));
                  // Add your navigation or action here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFEBF00),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  "Get Start",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
