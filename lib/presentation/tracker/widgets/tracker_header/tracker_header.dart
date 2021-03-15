import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../domain/tracker/tracker.dart';
import 'tracker_header_data.dart';
import 'tracker_header_logo.dart';

class TrackerHeader extends StatelessWidget {
  final Tracker? tracker;

  const TrackerHeader({
    required this.tracker,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Column(
          children: [
            Text(
              'Powered by https://$mainUrl',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.65,
                    child: TrackerHeaderData(
                      contamination: tracker!.contamination,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: TrackerHeaderLogo(),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
