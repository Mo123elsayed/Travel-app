// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './screens/Introduction_screen.dart';
import './models/trip.dart';
import './screens/bottom_tabs_screen.dart';
import './screens/category_trips_screen.dart';
import './screens/trip_detail_screen.dart';
import 'app_data.dart';
import 'screens/filtered_trips_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  Map<String, bool> _filters = {
    'isSummer': false,
    'isWinter': false,
    'isFamily': false,
  };

  List<Trip> _availableTrips = Trips_data;

  // Add your trips data h;
  void _changeFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;
      _availableTrips =
          Trips_data.where((trip) {
            if (_filters['isSummer'] == true && trip.isInSummer != true) {
              return false;
            }
            if (_filters['isWinter'] == true && trip.isInWinter != true) {
              return false;
            }
            if (_filters['isFamily'] == true && trip.isForFamilies != true) {
              return false;
            }
            return true;
          }).toList();
    });
  }

  // for favorite trips screen to show the favorite trips
  List<Trip> _favoriteTrips = [];
  // method to manage favorite trips
  // this method will be used to add or remove trips from the favorite list
  // when the user clicks on the heart icon in the trip detail screen
  void _manageFavorite(String tripId) {
    final existingIndex = _favoriteTrips.indexWhere(
      (trip) => trip.id == tripId,
    );
    if (existingIndex >= 0) {
      setState(() {
        _favoriteTrips.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteTrips.add(Trips_data.firstWhere((trip) => trip.id == tripId));
      });
    }
  }

  // method to check if the trip in favorite screen
  // and pass it to the trip detail screen
  bool _isFavorite(String id) {
    return _favoriteTrips.any((trip) => trip.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 231, 80, 35),
        fontFamily: 'Sora',
        textTheme: ThemeData.light().textTheme.copyWith(
          // headlineMedium: TextStyle(
          //   color: Colors.orange,
          //   fontWeight: FontWeight.bold,
          //   fontSize: 24,
          //   fontFamily: 'Cairo',
          // ),
          headlineLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Sora',
          ),
          headlineSmall: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,
            fontFamily: 'Cairo',
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => IntroductionScreen(),
        BottomTabsScreen.screenRoute: (ctx) => BottomTabsScreen(_favoriteTrips),
        CategoryTripsScreen.screenRoute:
            (ctx) => CategoryTripsScreen(_availableTrips),
        TripDetailScreen.screenRoute:
            (ctx) => TripDetailScreen(_manageFavorite, _isFavorite),
        FilteredTripsScreen.screenRoute:
            (ctx) => FilteredTripsScreen(_filters, _changeFilters),
      },
    );
  }
}
