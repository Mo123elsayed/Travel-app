import 'package:flutter/material.dart';
import '../models/trip.dart';
import '../screens/categories_screen.dart';
import '../screens/favourite_screen.dart';
import '../widgets/app_drawer.dart';

class BottomTabsScreen extends StatefulWidget {
  // const BottomTabsScreen({super.key});
  static const screenRoute = '/bottom-tabs';
  final List<Trip> favoriteTrips;
  BottomTabsScreen(this.favoriteTrips);
  @override
  State<BottomTabsScreen> createState() => _BottomTabsScreenState();
}

class _BottomTabsScreenState extends State<BottomTabsScreen> {
  
  int _selectedScreenIndex = 0;
  void _selectedTab(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  List<Map<String, Object>>? _screens;
  @override
  void initState() {
    _screens = [
      {'screen': CategoriesScreen(), 'title': 'Categories'},
      {
        'screen': FavouriteScreen(widget.favoriteTrips),
        'title': 'Favorite Trips',
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          '${_screens![_selectedScreenIndex]['title']}',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: 'Sora',
          ),
        ),
      ),
      drawer: const AppDrawer(),
      body: _screens![_selectedScreenIndex]['screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: const TextStyle(
          fontSize: 16,
          fontFamily: 'Sora',
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 16,
          fontFamily: 'Sora',
          fontWeight: FontWeight.bold,
        ),
        // tell the body which tab i stopped in
        currentIndex: _selectedScreenIndex,
        backgroundColor: Theme.of(context).primaryColor,
        onTap: _selectedTab,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.dashboard_rounded),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_sharp),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
