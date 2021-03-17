import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../domain/tracker/contamination.dart';
import 'contamination_header_data.dart';
import 'contamination_header_logo.dart';

class ContaminationHeader extends StatelessWidget {
  final Contamination? contamination;

  const ContaminationHeader({
    required this.contamination,
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
                    child: ContaminationHeaderData(
                      contamination: contamination,
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: ContaminationHeaderLogo(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
