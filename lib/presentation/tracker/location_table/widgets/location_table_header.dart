import 'package:flutter/material.dart';

import 'location_table_text_search.dart';

class LocationTableHeader extends StatelessWidget {
  final bool searchAvailable;
  final Function(String) onChanged;
  final Function() onClearPressed;

  const LocationTableHeader({
    required this.searchAvailable,
    required this.onChanged,
    required this.onClearPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          height: 60,
          child: Center(
            child: searchAvailable
                ? LocationTableTextSearch(
                    onChanged: onChanged,
                    onClearPressed: onClearPressed,
                  )
                : Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Search available only in first page',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue[800],
                      ),
                    ),
                  ),
          ),
        ),
      );
}
