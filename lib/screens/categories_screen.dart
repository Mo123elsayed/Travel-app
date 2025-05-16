import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:travel_app/app_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.orange,
      //   title: const Center(
      //     child: Text(
      //       'Categories',
      //       style: TextStyle(
      //         fontWeight: FontWeight.bold,
      //         fontFamily: 'Cairo',
      //         fontSize: 24,
      //       ),
      //     ),
      //   ),
      // ),
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 7 / 8,
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 10,
          crossAxisSpacing: 20,
        ),
        children:
            Categories_data.map(
              (categoryData) => CategoryItem(
                categoryData.id,
                categoryData.title,
                categoryData.imageUrl,
              ),
            ).toList(),
      ),
    );
  }
}
