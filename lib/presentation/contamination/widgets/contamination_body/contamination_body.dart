import 'package:flutter/material.dart';

import '../../../../domain/tracker/contamination.dart';
import 'contamination_body_pie.dart';
import 'contamination_body_text.dart';

class ContaminationBody extends StatelessWidget {
  final Contamination contamination;

  const ContaminationBody({
    required this.contamination,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 6,
            child: ContaminationBodyText(contamination: contamination),
          ),
          SizedBox(
            child: Center(
              child: ContaminationBodyPie(contamination: contamination),
            ),
          ),
        ],
      );
}
