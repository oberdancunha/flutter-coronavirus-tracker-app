import 'package:flutter/material.dart';

import 'location_table_text_search.dart';

class LocationTableHader extends StatelessWidget {
  final bool searchAvailable;
  final Function(String) onChanged;
  final Function() onClearPressed;

  const LocationTableHader({
    required this.searchAvailable,
    required this.onChanged,
    required this.onClearPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: SizedBox(
          height: 60,
          child: searchAvailable
              ? LocationTableTextSearch(
                  onChanged: onChanged,
                  onClearPressed: onClearPressed,
                )
              : Center(
                  child: Text(
                    'Search available only in first page',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue[800],
                    ),
                  ),
                ),
        ),
      );
}
