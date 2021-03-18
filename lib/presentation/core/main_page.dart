// ignore: import_of_legacy_library_into_null_safe
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../domain/tracker/tracker.dart';
import '../tracker/contamination/contamination_page.dart';
import '../tracker/location/location_page.dart';

class MainPage extends StatefulWidget {
  final Tracker? tracker;

  const MainPage({
    required this.tracker,
    Key? key,
  }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int? selectedIndex = 0;
  List<Widget>? widgets;

  @override
  void initState() {
    super.initState();
    widgets = [
      ContaminationPage(contamination: widget.tracker!.contamination),
      LocationPage(locations: widget.tracker!.locations),
    ];
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: widgets![selectedIndex!],
        bottomNavigationBar: FFNavigationBar(
          theme: FFNavigationBarTheme(
            barBackgroundColor: const Color(0xFFE8E8E8),
          ),
          selectedIndex: selectedIndex,
          onSelectTab: (index) {
            setState(() {
              selectedIndex = int.tryParse(index.toString());
            });
          },
          items: [
            FFNavigationBarItem(
              key: const Key('contamination_bar'),
              iconData: Icons.pie_chart,
              label: 'Contamination',
            ),
            FFNavigationBarItem(
              key: const Key('locations_bar'),
              iconData: Icons.location_on,
              label: 'Locations',
            ),
          ],
        ),
      );
}
