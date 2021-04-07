import 'package:flutter/material.dart';

import '../../../../../domain/tracker/contamination.dart';

class ContaminationHeaderData extends StatelessWidget {
  final Contamination? contamination;

  const ContaminationHeaderData({
    required this.contamination,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Last update ${contamination!.lastUpdated.getOrCrash()}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Total of cases',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          Text(
            contamination!.confirmed.getOrCrash(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 43,
            ),
          ),
        ],
      );
}
