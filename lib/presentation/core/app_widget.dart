import 'package:flutter/material.dart';

import 'app_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Coronavirus tracker app',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'PTSans',
          textTheme: const TextTheme(
            bodyText1: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        home: AppPage(),
      );
}
