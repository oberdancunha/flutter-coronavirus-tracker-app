import 'package:flutter/material.dart';

import '../../domain/tracker/tracker.dart';
import 'widgets/tracker_header/tracker_header.dart';

class TrackerPage extends StatelessWidget {
  final Tracker? tracker;

  const TrackerPage({
    required this.tracker,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Container(
            color: Colors.black,
            height: MediaQuery.of(context).size.height / 3.5,
            child: TrackerHeader(tracker: tracker),
          ),
          Container(),
        ],
      );
}
