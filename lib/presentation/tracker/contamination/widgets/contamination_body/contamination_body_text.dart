import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import '../../../../../domain/tracker/contamination.dart';

class ContaminationBodyText extends StatelessWidget {
  final Contamination contamination;

  const ContaminationBodyText({
    required this.contamination,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 15,
        ),
        child: Row(
          children: [
            _buildContainer(
              context: context,
              backgroundColor: recoveredColorLight,
              foregroundColor: recoveredColorDark,
              contaminationNumber: contamination.recovered.getOrCrash(),
              contaminationLabel: 'recovered',
            ),
            const SizedBox(width: 10),
            _buildContainer(
              context: context,
              backgroundColor: deathsColorLight,
              foregroundColor: deathsColorDark,
              contaminationNumber: contamination.deaths.getOrCrash(),
              contaminationLabel: 'deaths',
            ),
          ],
        ),
      );

  Widget _buildContainer({
    required BuildContext context,
    required Color backgroundColor,
    required Color foregroundColor,
    required String contaminationNumber,
    required String contaminationLabel,
  }) =>
      Container(
        width: (MediaQuery.of(context).size.width / 2) - 15,
        height: 110,
        color: backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              contaminationNumber,
              style: TextStyle(
                color: foregroundColor,
                fontSize: 35,
              ),
            ),
            Text(
              contaminationLabel,
              style: TextStyle(
                color: foregroundColor,
                fontSize: 20,
              ),
            ),
          ],
        ),
      );
}
