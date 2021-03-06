import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import '../../../../../domain/core/value_transformers.dart';
import '../../../../../domain/tracker/contamination.dart';

class ContaminationBodyPie extends StatelessWidget {
  final Contamination contamination;

  const ContaminationBodyPie({
    required this.contamination,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _contaminationPieData = [
      _ContaminationPieData(
        value: contamination.confirmed.getOrCrash(),
        label: 'confirmed',
        backgroundColor: Colors.black,
      ),
      _ContaminationPieData(
        value: contamination.recovered.getOrCrash(),
        label: 'recovered',
        backgroundColor: recoveredColorDark,
      ),
      _ContaminationPieData(
        value: contamination.deaths.getOrCrash(),
        label: 'deaths',
        backgroundColor: deathsColorDark,
      ),
    ];

    return AspectRatio(
      aspectRatio: 1.3,
      child: PieChart(
        PieChartData(
          borderData: FlBorderData(
            show: false,
          ),
          sectionsSpace: 0,
          centerSpaceRadius: 0,
          sections: _listData(_contaminationPieData),
        ),
      ),
    );
  }

  List<PieChartSectionData> _listData(List<_ContaminationPieData> contaminationPieData) =>
      contaminationPieData
          .map(
            (contamination) => PieChartSectionData(
              color: contamination.backgroundColor,
              value: double.tryParse(removeDecimalPattern(contamination.value)),
              title: contamination.label,
              radius: 135,
              titleStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              badgePositionPercentageOffset: 0.98,
            ),
          )
          .toList();
}

class _ContaminationPieData {
  final String label;
  final String value;
  final Color backgroundColor;

  _ContaminationPieData({
    required this.label,
    required this.value,
    required this.backgroundColor,
  });
}
