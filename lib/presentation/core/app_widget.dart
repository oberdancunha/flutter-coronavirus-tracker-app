import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
        builder: (context, widget) => ResponsiveWrapper.builder(
          widget,
          maxWidth: 1200,
          minWidth: 480,
          defaultScale: true,
          breakpoints: const [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.resize(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ],
        ),
      );
}
