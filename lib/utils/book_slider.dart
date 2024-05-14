import 'package:flutter/material.dart';

class BookImageSlider extends StatelessWidget {
  final List<String> imagePaths;

  const BookImageSlider({super.key, required this.imagePaths});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: imagePaths.map((path) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 10, 10),
            child: Container(
              //  margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  path,
                  width: 160,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
