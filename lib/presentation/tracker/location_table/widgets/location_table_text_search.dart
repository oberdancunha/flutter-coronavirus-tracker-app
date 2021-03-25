import 'package:flutter/material.dart';

class LocationTableTextSearch extends StatefulWidget {
  final Function(String) onChanged;
  final Function() onClearPressed;

  const LocationTableTextSearch({
    required this.onChanged,
    required this.onClearPressed,
    Key? key,
  }) : super(key: key);

  @override
  _LocationTableTextSearchState createState() => _LocationTableTextSearchState();
}

class _LocationTableTextSearchState extends State<LocationTableTextSearch> {
  late TextEditingController _textController;

  @override
  void initState() {
    _textController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Center(
        child: TextField(
          key: const Key('location_table_text_search'),
          controller: _textController,
          autofocus: true,
          showCursor: true,
          decoration: InputDecoration(
            focusedBorder: const UnderlineInputBorder(),
            prefixIcon: const Icon(
              Icons.search,
            ),
            suffixIcon: IconButton(
              key: const Key('clear_text_search_button'),
              icon: const Icon(Icons.clear),
              onPressed: () {
                _textController.clear();
                widget.onClearPressed();
              },
            ),
            hintText: 'Search country',
            hintStyle: TextStyle(
              color: Colors.grey[400],
              fontSize: 20,
            ),
          ),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          onChanged: widget.onChanged,
        ),
      );
}
