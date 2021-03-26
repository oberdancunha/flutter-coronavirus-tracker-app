import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:marquee/marquee.dart';

import '../../../../core/constants.dart';
import '../../misc/tracker_presentation_classes.dart';

class LocationTableDataSource extends DataTableSource {
  final List<LocationPrimitive> locations;

  LocationTableDataSource(this.locations);

  @override
  DataRow? getRow(int index) {
    final location = locations.elementAt(index);

    return DataRow.byIndex(
      index: index,
      cells: <DataCell>[
        _printRow(value: location.country, foregroundColor: countryColor),
        _printRow(
          value: location.countryPopulation,
          foregroundColor: countryColor,
        ),
        _printRow(
          value: location.contaminations.first.confirmed,
          foregroundColor: confirmedColor,
        ),
        _printRow(
          value: location.contaminations.first.recovered,
          foregroundColor: recoveredColorDark,
        ),
        _printRow(
          value: location.contaminations.first.deaths,
          foregroundColor: deathsColorDark,
        ),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => locations.length;

  @override
  int get selectedRowCount => 0;

  DataCell _printRow({
    required String value,
    required Color foregroundColor,
  }) {
    const double fontSize = 17;

    return DataCell(
      value.length < 10
          ? Text(
              value,
              style: TextStyle(
                fontSize: fontSize,
                color: foregroundColor,
              ),
            )
          : SizedBox(
              height: 30,
              width: 90,
              child: Marquee(
                text: '$value  ',
                style: TextStyle(
                  fontSize: fontSize,
                  color: foregroundColor,
                ),
                pauseAfterRound: const Duration(milliseconds: 1),
              ),
            ),
    );
  }
}
