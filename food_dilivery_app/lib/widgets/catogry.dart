import 'package:flutter/material.dart';

// Generic CategoryScreen for displaying category details
class CategoryScreen extends StatelessWidget {
  final String categoryLabel;
  final String categoryImage;

  const CategoryScreen({Key? key, required this.categoryLabel, required this.categoryImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryLabel),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              categoryImage,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Text(
              categoryLabel,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
