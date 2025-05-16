import 'package:flutter/material.dart';
import '../app_data.dart';
import '../models/trip.dart';
import 'package:travel_app/widgets/trip_item.dart';
import 'dart:ui';

class CategoryTripsScreen extends StatefulWidget {
  static const screenRoute = '/categoryTrip';
  final List<Trip> availableTrips;
  CategoryTripsScreen(this.availableTrips);

  @override
  State<CategoryTripsScreen> createState() => _CategoryTripsScreenState();
}

class _CategoryTripsScreenState extends State<CategoryTripsScreen> {
  @override
  Widget build(BuildContext context) {
    // to pass id and title for each card in categories screen
    final routeArgument =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final categoryId = routeArgument['id'];
    final categoryTitle = routeArgument['title'];
    final backgroundImage = routeArgument['imageUrl'];
    // to match each category to its trip
    final filteredTrips =
        widget.availableTrips.where((trip) {
          return trip.categories.contains(categoryId);
        }).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 231, 80, 35),
        title: Text(
          '$categoryTitle',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Cairo',
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            backgroundImage!,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              child: Container(color: Colors.transparent),
            ),
          ),
          ListView.builder(
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
        ],
      ),
    );
  }
}
