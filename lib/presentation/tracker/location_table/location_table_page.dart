import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/tracker/location.dart';
import '../../core/header_widget.dart';
import '../misc/tracker_presentation_classes.dart';
import 'misc/location_table_data_souce.dart';
import 'widgets/location_table_header.dart';

class LocationTablePage extends StatefulWidget {
  final KtList<Location> locations;

  const LocationTablePage({
    required this.locations,
    Key? key,
  }) : super(key: key);

  @override
  _LocationTablePageState createState() => _LocationTablePageState();
}

class _LocationTablePageState extends State<LocationTablePage> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;
  bool _searchAvailable = true;
  static const _maxRowsPerPage = 12;
  late List<LocationPrimitive> _locationsPrimitive;
  late List<LocationPrimitive> _locationsPrimitiveImmutable;
  late int _rowsPerPage;

  @override
  void initState() {
    _locationsPrimitive = widget.locations
        .asList()
        .map((location) => LocationPrimitive.fromDomain(location))
        .toList();
    _locationsPrimitiveImmutable = _locationsPrimitive;
    _setRowsPerPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          HeaderWidget(),
          _buildHeader(),
          Expanded(
            child: _locationsPrimitive.isNotEmpty ? _showDataTable() : _showTableEmpty(),
          ),
        ],
      );

  Widget _buildHeader() => LocationTableHader(
        searchAvailable: _searchAvailable,
        onChanged: _changeTextSearch,
        onClearPressed: () {
          setState(
            () {
              _locationsPrimitive = _locationsPrimitiveImmutable;
              _rowsPerPage = _maxRowsPerPage;
              _setRowsPerPage();
            },
          );
        },
      );

  Widget _showDataTable() => SingleChildScrollView(
        child: PaginatedDataTable(
          key: const Key('location_table'),
          columnSpacing: 0,
          sortColumnIndex: _sortColumnIndex,
          sortAscending: _sortAscending,
          rowsPerPage: _rowsPerPage,
          horizontalMargin: 5,
          dataRowHeight: (MediaQuery.of(context).size.height / 2) / _maxRowsPerPage,
          columns: _buildColumns(),
          source: LocationTableDataSource(_locationsPrimitive),
          onPageChanged: (value) {
            setState(() {
              _searchAvailable = value == 0;
            });
          },
        ),
      );

  Widget _showTableEmpty() => Center(
        child: Text(
          'Table is empty',
          style: TextStyle(
            fontSize: 40,
            color: Colors.blue.shade800,
          ),
        ),
      );

  List<DataColumn> _buildColumns() => [
        _buildColumn<String>(
          label: 'Country',
          isNumeric: false,
          getField: (location) => location.country,
        ),
        _buildColumn<num>(
          label: 'Population',
          isNumeric: true,
          getField: (location) => location.countryPopulation,
        ),
        _buildColumn<num>(
          label: 'Confirmed',
          isNumeric: true,
          getField: (location) => location.contaminations.first.confirmed,
        ),
        _buildColumn<num>(
          label: 'Recovered',
          isNumeric: true,
          getField: (location) => location.contaminations.first.recovered,
        ),
        _buildColumn<num>(
          label: 'Deaths',
          isNumeric: true,
          getField: (location) => location.contaminations.first.deaths,
        ),
      ];

  DataColumn _buildColumn<T>({
    required String label,
    required bool isNumeric,
    required Comparable<T> Function(LocationPrimitive) getField,
  }) =>
      DataColumn(
        label: Text(
          label,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        numeric: isNumeric,
        onSort: (columnIndex, ascending) {
          _sort<T>(
            getField,
            ascending,
            columnIndex,
          );
        },
      );

  void _sort<T>(
    Comparable<T> Function(LocationPrimitive) getField,
    bool ascending,
    int columnIndex,
  ) {
    _locationsPrimitive.sort((locationA, locationB) {
      if (!ascending) {
        final locationC = locationA;
        locationA = locationB;
        locationB = locationC;
      }
      final Comparable<T> aValue = getField(locationA);
      final Comparable<T> bValue = getField(locationB);

      return Comparable.compare(aValue, bValue);
    });
    setState(() {
      _sortAscending = ascending;
      _sortColumnIndex = columnIndex;
    });
  }

  void _setRowsPerPage() {
    _rowsPerPage = _locationsPrimitive.isNotEmpty
        ? _locationsPrimitive.length < _maxRowsPerPage
            ? _locationsPrimitive.length
            : _maxRowsPerPage
        : 1;
  }

  void _changeTextSearch(String textSearch) {
    final textSearchTrimmed = textSearch.trim().replaceAll(RegExp(' +'), ' ');
    setState(
      () {
        _locationsPrimitive = _locationsPrimitiveImmutable
            .where(
              (location) =>
                  location.country.toLowerCase().contains(textSearchTrimmed.toLowerCase()),
            )
            .toList();
        _setRowsPerPage();
      },
    );
  }
}
