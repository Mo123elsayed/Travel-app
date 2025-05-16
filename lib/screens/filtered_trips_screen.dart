import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class FilteredTripsScreen extends StatefulWidget {
  final Function saveFilters;
  final Map<String, bool> currentFilters;

  static const screenRoute = '/filterdTrips';
  FilteredTripsScreen(this.currentFilters, this.saveFilters);
  @override
  State<FilteredTripsScreen> createState() => _FilteredTripsScreenState();
}

class _FilteredTripsScreenState extends State<FilteredTripsScreen> {
  var _InSummer = false;
  var _InWinter = false;
  var _IsForFamilies = false;

  @override
  void initState() {
    _InSummer = widget.currentFilters['isSummer'] as bool;
    _InWinter = widget.currentFilters['isWinter'] as bool;
    _IsForFamilies = widget.currentFilters['isFamily'] as bool;
    super.initState();

  }

  Widget buildSwitchListTile(
    String title,
    String subTitle,
    var currentValue,
    Function(bool) changedValue,
  ) {
    return SwitchListTile(
      title: Text(title, style: Theme.of(context).textTheme.headlineSmall),
      subtitle: Text(subTitle, style: TextStyle(color: Colors.grey.shade400)),
      value: currentValue,
      onChanged: changedValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              final selectedFilters = {
                'isSummer': _InSummer,
                'isWinter': _InWinter,
                'isFamily': _IsForFamilies,
              };
              widget.saveFilters(selectedFilters);
            },
            icon: const Icon(Icons.save_rounded),
          ),
        ],
        title: const Text(
          'Filtering',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      drawer: const AppDrawer(),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Expanded(
            child: ListView(
              children: [
                buildSwitchListTile(
                  'Summer Trips',
                  'show summer trips only',
                  _InSummer,
                  (newValue) {
                    setState(() {
                      _InSummer = newValue;
                    });
                  },
                ),
                buildSwitchListTile(
                  'Winter Trips',
                  'show winter trips only',
                  _InWinter,
                  (newValue) {
                    setState(() {
                      _InWinter = newValue;
                    });
                  },
                ),
                buildSwitchListTile(
                  'Family Trips',
                  'show family trips only',
                  _IsForFamilies,
                  (newValue) {
                    setState(() {
                      _IsForFamilies = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
