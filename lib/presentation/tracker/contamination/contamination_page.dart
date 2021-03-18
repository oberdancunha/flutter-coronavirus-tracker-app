import 'package:flutter/material.dart';

import '../../../domain/tracker/contamination.dart';
import 'widgets/contamination_body/contamination_body.dart';
import 'widgets/contamination_header/contamination_header.dart';

class ContaminationPage extends StatelessWidget {
  final Contamination contamination;

  const ContaminationPage({
    required this.contamination,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Container(
            color: Colors.black,
            height: MediaQuery.of(context).size.height / 3.5,
            child: ContaminationHeader(contamination: contamination),
          ),
          ContaminationBody(
            contamination: contamination,
          ),
        ],
      );
}
