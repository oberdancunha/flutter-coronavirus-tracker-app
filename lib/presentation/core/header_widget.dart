import 'package:flutter/material.dart';

import '../../core/constants.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  key: Key(mainLogo),
                  width: 50,
                  height: 93,
                  image: AssetImage(mainLogo),
                ),
                const SizedBox(width: 20),
                const Text(
                  'Coronavirus Tracker App',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'Alegreya',
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
