import 'dart:convert';

import 'package:http/http.dart';

import '../../core/constants.dart';
import '../../core/exceptions/server_exception.dart';
import '../../domain/tracker/i_tracker_data_source.dart';
import '../../domain/tracker/tracker.dart';
import '../../infrastructure/tracker/tracker_dto.dart';

class TrackerDataSource implements ITrackerDataSource {
  final Client? client;

  TrackerDataSource(this.client);

  @override
  Future<Tracker?> get() async {
    final uri = Uri.https(
      mainUrl,
      locationUrl,
      {
        'source': source,
        'timelines': timelineData,
      },
    );
    final trackerResponse = await client!.get(
      uri,
      headers: {'content-Type': 'accept: application/json'},
    );
    if (trackerResponse.statusCode == 200) {
      return TrackerDto.fromApi(
        json.decode(trackerResponse.body) as Map<String, dynamic>,
      ).toDomain();
    } else {
      throw ServerException();
    }
  }
}
