import 'package:flutter/material.dart';
import 'package:travel_app/models/trip.dart';

import '../screens/trip_detail_screen.dart';

class TripItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int durationTrip;
  final Season season;
  final TripType tripType;
  // final List<String> activities;
  // final List<String> programTrip;

  const TripItem({
    super.key,
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.durationTrip,
    required this.season,
    required this.tripType,
  });

  String get seasonText {
    switch (season) {
      case Season.Summer:
        return "Summer";
        break;
      case Season.Winter:
        return "Winter";
        break;
      case Season.Spring:
        return "Spring";
        break;
      case Season.Autumn:
        return "Autumn";
        break;
    }
  }

  String get triptype {
    switch (tripType) {
      case TripType.Exploration:
        return "Exploration";
        break;
      case TripType.Activities:
        return "Activities";
        break;
      case TripType.Recovery:
        return "Recovery";
        break;
      case TripType.Therapy:
        return "Therapy";
        break;
    }
  }

  void selectTrip(BuildContext ctx) {
    Navigator.of(
      ctx,
    ).pushNamed(TripDetailScreen.screenRoute, arguments: {'id': id});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectTrip(context),
      child: Card(
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                  child: Image.asset(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 250,
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color.fromARGB(0, 0, 0, 0),
                        Color.fromRGBO(0, 0, 0, 0.7),
                      ],
                      stops: const [0.7, 1],
                    ),
                  ),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 231, 80, 35),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.calendar_month_rounded, size: 25),
                      const SizedBox(width: 5),
                      Text(
                        '$durationTrip Days',
                        style: const TextStyle(
                          fontSize: 15,
                          fontFamily: 'Sora',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.wb_sunny_rounded, size: 25),
                      const SizedBox(width: 5),
                      Text(
                        seasonText,
                        style: const TextStyle(
                          fontSize: 15,
                          fontFamily: 'Sora',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.family_restroom_rounded, size: 25),
                      const SizedBox(width: 5),
                      Text(
                        triptype,
                        style: const TextStyle(
                          fontSize: 15,
                          fontFamily: 'Sora',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
