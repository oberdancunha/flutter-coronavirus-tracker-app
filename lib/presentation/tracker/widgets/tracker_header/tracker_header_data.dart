import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../domain/tracker/contamination.dart';

class TrackerHeaderData extends StatelessWidget {
  final Contamination? contamination;

  const TrackerHeaderData({
    required this.contamination,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Last update ${DateFormat('MMMM dd, yyyy, kk:mm').format(contamination!.lastUpdated)}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Total os cases',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          Text(
            NumberFormat.decimalPattern('en_US').format(
              contamination!.confirmed,
            ),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
          ),
        ],
      );
}