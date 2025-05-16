import 'package:flutter/material.dart';
import '../widgets/trip_item.dart';
import '../models/trip.dart';

class FavouriteScreen extends StatefulWidget {
  // const FavouriteScreen({super.key});
  List<Trip> favoriteTrips;
  FavouriteScreen(this.favoriteTrips);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    // if the list of favorite trips is empty, show a message
    if (widget.favoriteTrips.isEmpty) {
      return Center(
        child: Text(
          'You have no favourite trips yet',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: 'Sora',
          ),
        ),
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TripItem(
            id: widget.favoriteTrips[index].id,
            title: widget.favoriteTrips[index].title,
            imageUrl: widget.favoriteTrips[index].imageUrl,
            durationTrip: widget.favoriteTrips[index].durationTrip,
            season: widget.favoriteTrips[index].season,
            tripType: widget.favoriteTrips[index].tripType,
          );
        },
        itemCount: widget.favoriteTrips.length,
      );
    }
  }
}
