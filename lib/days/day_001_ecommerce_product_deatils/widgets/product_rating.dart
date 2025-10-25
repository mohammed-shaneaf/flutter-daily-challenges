import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

class ProductRating extends StatelessWidget {
  const ProductRating({super.key, required this.rating, required this.starCount});

  final double rating;
  final int starCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Text('Review', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
          Spacer(),
          StarRating(
            rating: rating,
            starCount: starCount,
            color: const Color.fromARGB(255, 163, 99, 3),
          ),
        ],
      ),
    );
  }
}
