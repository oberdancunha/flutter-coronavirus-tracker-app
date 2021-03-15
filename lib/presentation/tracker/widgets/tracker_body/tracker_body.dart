import 'package:flutter/material.dart';

import '../../../../domain/tracker/contamination.dart';
import 'tracker_body_pie.dart';
import 'tracker_body_text.dart';

class TrackerBody extends StatelessWidget {
  final Contamination contamination;

  const TrackerBody({
    required this.contamination,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 6,
            child: TrackerBodyText(contamination: contamination),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: TrackerBodyPie(contamination: contamination),
          ),
        ],
      );
}
