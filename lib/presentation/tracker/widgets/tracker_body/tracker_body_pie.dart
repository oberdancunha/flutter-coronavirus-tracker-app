import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../domain/tracker/contamination.dart';

class TrackerBodyPie extends StatelessWidget {
  final Contamination contamination;

  const TrackerBodyPie({
    required this.contamination,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final datas = [
      _PieData(
        value: contamination.confirmed,
        label: 'confirmed',
        backgroundColor: Colors.black,
      ),
      _PieData(
        value: contamination.recovered,
        label: 'recovered',
        backgroundColor: recoveredColorDark,
      ),
      _PieData(
        value: contamination.deaths,
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
          sections: datas
              .map(
                (data) => PieChartSectionData(
                  color: data.backgroundColor,
                  value: double.tryParse(data.value.toString()),
                  title: data.label,
                  radius: 135,
                  titleStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  badgePositionPercentageOffset: 0.98,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class _PieData {
  final String label;
  final int value;
  final Color backgroundColor;

  _PieData({
    required this.label,
    required this.value,
    required this.backgroundColor,
  });
}
