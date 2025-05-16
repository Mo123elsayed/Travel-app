// import 'package:flutter/material.dart';
// import 'package:travel_app/screens/categories_screen.dart';
// import 'package:travel_app/screens/favourite_screen.dart';

// class TabsScreen extends StatelessWidget {
//   const TabsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         backgroundColor: Colors.black54,
//         appBar: AppBar(
//           title: const Text('Trip guide'),
//           backgroundColor: Colors.orange,
//           bottom: const TabBar(
//             labelColor: Colors.white,
//             unselectedLabelColor: Colors.black,
//             tabs: [
//               Tab(
//                 icon: Icon(Icons.dashboard_rounded),
//                 text: 'Categories',
//               ),
//               Tab(
//                 icon: Icon(Icons.star_sharp),
//                 text: 'Favorites',
//               ),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             CategoriesScreen(),
//             FavouriteScreen(),
//           ],
//         ),
//       ),
//     );
//   }
// }
