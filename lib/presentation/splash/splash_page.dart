import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/coronavirus.png',
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 50),
              const Text(
                'Coronavirus Tracker App',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Alegreya',
                ),
              ),
            ],
          ),
        ),
      );
}
