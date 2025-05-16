import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class FilteredTrips extends StatefulWidget {
  const FilteredTrips({super.key});

  static const screenRoute = '/filterdTrips';

  @override
  State<FilteredTrips> createState() => _FilteredTripsState();
}

class _FilteredTripsState extends State<FilteredTrips> {
  var _InSummer = false;
  var _InWinter = false;
  var _IsForFamilies = false;

  Widget buildSwitchListTile(String title, String subTitle, var currentValue,
      Function(bool) changedValue) {
    return SwitchListTile(
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        subTitle,
        style: TextStyle(
          color: Colors.grey.shade400,
        ),
      ),
      value: currentValue,
      onChanged: changedValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: const Text(
          'Filtering',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.orange,
      ),
      drawer: const AppDrawer(),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView(
              children: [
                buildSwitchListTile(
                    'Summer Trips', 'show summer trips only', _InSummer,
                    (newValue) {
                  setState(() {
                    _InSummer = newValue;
                  });
                }),
                buildSwitchListTile(
                    'Winter Trips', 'show winter trips only', _InWinter,
                    (newValue) {
                  setState(() {
                    _InWinter = newValue;
                  });
                }),
                buildSwitchListTile(
                    'Family Trips', 'show family trips only', _IsForFamilies,
                    (newValue) {
                  setState(() {
                    _IsForFamilies = newValue;
                  });
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
