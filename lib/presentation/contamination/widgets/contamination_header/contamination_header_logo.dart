import 'package:flutter/material.dart';

class ContaminationHeaderLogo extends StatelessWidget {
  final logo = 'assets/images/coronavirus.png';

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            key: Key(logo),
            width: 93,
            height: 93,
            image: AssetImage(logo),
          ),
          const Text(
            'Coronavirus Tracker',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      );
}
