import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Text(
          'This is Favorite Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
