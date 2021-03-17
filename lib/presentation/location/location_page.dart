import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_map/flutter_map.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_map_marker_popup/flutter_map_marker_popup.dart';
import 'package:kt_dart/collection.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:latlong/latlong.dart';

import '../../domain/tracker/location.dart';
import 'location_popup.dart';

class LocationPage extends StatefulWidget {
  final KtList<Location> locations;

  const LocationPage({
    required this.locations,
    Key? key,
  }) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  static const _markerSize = 40.0;
  static const _zoom = 5.0;
  final _popupLayerController = PopupController();
  List<Marker>? _markers;
  late final MapController _mapController;
  late LatLng _mapCenter;

  @override
  void initState() {
    super.initState();
    _markers = widget.locations
        .asList()
        .map(
          (location) => Marker(
            point: LatLng(location.latitude, location.longitude),
            width: _markerSize,
            height: _markerSize,
            builder: (_) => Icon(
              Icons.location_on,
              key: Key(location.country),
              size: _markerSize,
            ),
            anchorPos: AnchorPos.align(AnchorAlign.top),
          ),
        )
        .toList();
    _mapCenter = LatLng(-14.235, -51.9253);
    _mapController = MapController();
  }

  @override
  void dispose() {
    _popupLayerController.streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => FlutterMap(
        mapController: _mapController,
        options: MapOptions(
          zoom: _zoom,
          center: _mapCenter,
          plugins: [PopupMarkerPlugin()],
          onTap: (_) => _popupLayerController.hidePopup(),
          onPositionChanged: (position, hasGesture) {
            if (hasGesture) {
              _popupLayerController.hidePopup();
            }
          },
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: ['a', 'b', 'c'],
          ),
          PopupMarkerLayerOptions(
            markers: _markers,
            popupController: _popupLayerController,
            popupBuilder: (_, marker) {
              _mapController.move(marker.point, _zoom);

              return LocationPopup(
                locations: widget.locations,
                marker: marker,
              );
            },
          ),
        ],
      );
}
