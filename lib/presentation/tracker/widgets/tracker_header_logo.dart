import 'package:flutter/material.dart';

class TrackerHeaderLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Image(
            width: 93,
            height: 93,
            image: AssetImage('assets/images/coronavirus.png'),
          ),
          Text(
            'Coronavirus Tracker',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      );
}
