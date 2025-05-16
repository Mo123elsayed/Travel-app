import 'package:flutter/material.dart';
import 'package:travel_app/screens/bottom_tabs_screen.dart';
import 'dart:ui';
import '../screens/filtered_trips_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  Widget DrawerListTile(String title, IconData icon, Function() onTapLink) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: 'Sora',
        ),
      ),
      leading: Icon(icon, color: Colors.white),
      onTap: onTapLink,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/W5YKD7UA.jpeg',
              fit: BoxFit.cover,
              height: double.infinity,
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0.9, sigmaY: 0.9),
            child: Container(color: Color.fromRGBO(0, 0, 0, 0.1)),
          ),
          Column(
            children: [
              Container(
                color: Color.fromARGB(255, 231, 80, 35),
                alignment: Alignment.center,
                height: 100,
                width: double.infinity,
                padding: const EdgeInsets.only(top: 15),
                child: const Text(
                  'Travel Guide',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Sora',
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              DrawerListTile('Trips Categories', Icons.dashboard_rounded, () {
                Navigator.of(
                  context,
                ).pushReplacementNamed(BottomTabsScreen.screenRoute);
              }),
              DrawerListTile('Filtering', Icons.filter_list, () {
                Navigator.of(
                  context,
                ).pushNamed(FilteredTripsScreen.screenRoute);
              }),
            ],
          ),
        ],
      ),
    );
  }
}
