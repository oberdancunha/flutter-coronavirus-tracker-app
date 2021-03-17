import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_map/plugin_api.dart';
import 'package:intl/intl.dart';
import 'package:kt_dart/collection.dart';

import '../../../core/constants.dart';
import '../../../domain/tracker/location.dart';

class LocationPopup extends StatefulWidget {
  final KtList<Location> locations;
  final Marker marker;

  const LocationPopup({
    required this.locations,
    required this.marker,
    Key? key,
  }) : super(key: key);

  @override
  _LocationPopupState createState() => _LocationPopupState();
}

class _LocationPopupState extends State<LocationPopup> {
  late Location _location;

  @override
  void initState() {
    _location = widget.locations.asList().firstWhere((location) =>
        location.latitude == widget.marker.point.latitude &&
        location.longitude == widget.marker.point.longitude);
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Container(
        width: 280,
        height: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              AutoSizeText(
                _location.country,
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.amber.shade900,
                ),
                maxLines: 1,
              ),
              const SizedBox(height: 7),
              Container(
                color: Colors.black,
                height: 1,
              ),
              const SizedBox(height: 7),
              _printContamination(
                foregroundColor: confirmedColor,
                value: _location.contaminations.first().confirmed,
                label: 'Confirmed',
              ),
              const SizedBox(height: 5),
              _printContamination(
                foregroundColor: recoveredColorDark,
                value: _location.contaminations.first().recovered,
                label: 'Recovered',
              ),
              const SizedBox(height: 5),
              _printContamination(
                foregroundColor: deathsColorDark,
                value: _location.contaminations.first().deaths,
                label: 'deaths',
              ),
            ],
          ),
        ),
      );

  Widget _printContamination({
    required Color foregroundColor,
    required int value,
    required String label,
  }) {
    const fontSize = 22.0;

    return Row(
      children: [
        Text(
          '$label: ',
          style: TextStyle(
            fontSize: fontSize,
            color: foregroundColor,
          ),
        ),
        Text(
          NumberFormat.decimalPattern('en-US').format(value),
          style: TextStyle(
            fontSize: fontSize,
            color: foregroundColor,
          ),
        ),
      ],
    );
  }
}
