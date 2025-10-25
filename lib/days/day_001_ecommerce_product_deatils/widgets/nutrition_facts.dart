import 'package:flutter/material.dart';

class NutritionFacts extends StatelessWidget {
  const NutritionFacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.green),
          child: const ExpansionTile(
            tilePadding: EdgeInsets.symmetric(horizontal: 16),
            childrenPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
            title: Text('Nutrition Facts', style: TextStyle(fontWeight: FontWeight.w700)),
            children: [Text('• Calories: 95\n• Fiber: 4g\n• Vitamin C: 14% DV')],
          ),
        ),
      ),
    );
  }
}
