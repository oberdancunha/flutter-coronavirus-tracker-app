import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/tracker/tracker_application.dart';
import '../../domain/core/failures.dart';
import '../splash/splash_page.dart';
import 'failure_page.dart';
import 'main_page.dart';

class AppPage extends StatelessWidget {
  // final time = DateTime.now();
  final time = DateTime.parse('2021-03-02T16:04:34.882427Z');

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Consumer(
          builder: (context, watch, child) {
            final response = watch(trackerApplicationGetProvider(time));

            return response.map(
              data: (_) => MainPage(tracker: _.value),
              loading: (_) => SplashPage(),
              error: (_) {
                final failure = _.error as Failure;

                return failure.maybeMap(
                  isNotConnected: (_) => const FailurePage(
                    title: 'Device is not connected',
                    image: 'assets/images/connection_error.png',
                  ),
                  serverError: (_) => const FailurePage(
                    title: 'An unknown error has occurred',
                    image: 'assets/images/server_error.png',
                  ),
                  orElse: () => Container(),
                );
              },
            );
          },
        ),
      );
}
