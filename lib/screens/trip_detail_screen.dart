import 'package:flutter/material.dart';
import 'dart:ui';
import '../app_data.dart';

class TripDetailScreen extends StatelessWidget {
  static const screenRoute = '/tripDetails';

  final Function manageFavorite;
  final Function isFavorite;
  TripDetailScreen(this.manageFavorite, this.isFavorite);

  // a method for the labels of the screen
  Widget textLabel(String label) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      alignment: Alignment.topLeft,
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.black,
          fontFamily: 'Cairo',
          fontSize: 29,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget listViewContainer({Widget? child}) {
    return Container(
      margin: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.amber.shade900, width: 3),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      // height: 210,
      padding: const EdgeInsets.all(15),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final tripId = routeArgument['id'];
    // the next line to match the trip id with its trip
    final selectedTrip = Trips_data.firstWhere((trip) => trip.id == tripId);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 231, 80, 35),
        title: Text(
          selectedTrip.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Sora',
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            selectedTrip.imageUrl,
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
          SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(selectedTrip.imageUrl, width: double.infinity),
                const SizedBox(height: 20),
                textLabel('Activities'),
                listViewContainer(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder:
                        (context, index) => Card(
                          elevation: 0,
                          color: Colors.transparent,
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            selectedTrip.activities[index],
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cairo',
                            ),
                          ),
                        ),
                    itemCount: selectedTrip.activities.length,
                  ),
                ),
                const SizedBox(width: 190, child: Divider(height: 20)),
                textLabel('Program Trip'),
                Container(
                  // height: 380,
                  margin: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.amber.shade900, width: 3),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.all(5),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder:
                        (context, index) => Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.amber,
                                child: Text(
                                  'Day ${index + 1}',
                                  style: const TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              title: Text(
                                selectedTrip.programTrip[index],
                                style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo',
                                ),
                              ),
                            ),
                          ],
                        ),
                    itemCount: selectedTrip.programTrip.length,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {
          manageFavorite(tripId);
        },
        child: Icon(
          isFavorite(tripId) ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ),
      ),
    );
  }
}
