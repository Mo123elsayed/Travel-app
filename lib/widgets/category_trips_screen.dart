import 'package:flutter/material.dart';
import 'package:travel_app/app_data.dart';
import 'package:travel_app/widgets/trip_item.dart';

class CategoryTripsScreen extends StatelessWidget {
  static const screenRoute = '/categoryTrip';

  const CategoryTripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // to pass id and title for each card in categories screen
    final routeArgument =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final categoryId = routeArgument['id'];
    final categoryTitle = routeArgument['title'];
    // to match each category to its trip
    final filteredTrips =
        Trips_data.where((trip) {
          return trip.categories.contains(categoryId);
        }).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          '$categoryTitle',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Cairo',
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TripItem(
            id: filteredTrips[index].id,
            title: filteredTrips[index].title,
            imageUrl: filteredTrips[index].imageUrl,
            durationTrip: filteredTrips[index].durationTrip,
            season: filteredTrips[index].season,
            tripType: filteredTrips[index].tripType,
          );
        },
        itemCount: filteredTrips.length,
      ),
    );
  }
}
