import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';

class ContaminationHeaderLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            key: Key(mainLogo),
            width: 93,
            height: 93,
            image: AssetImage(mainLogo),
          ),
          const SizedBox(height: 10),
          const Text(
            'Coronavirus Tracker',
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontFamily: 'Alegreya',
            ),
          ),
        ],
      );
}
