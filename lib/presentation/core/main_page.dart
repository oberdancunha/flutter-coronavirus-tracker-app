// ignore: import_of_legacy_library_into_null_safe
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../domain/tracker/tracker.dart';
import '../tracker/tracker_page.dart';

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
      TrackerPage(tracker: widget.tracker),
      Container(),
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
              iconData: Icons.pie_chart,
              label: 'Stats',
            ),
            FFNavigationBarItem(
              iconData: Icons.location_on,
              label: 'Locations',
            ),
          ],
        ),
      );
}