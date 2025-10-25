import 'package:flutter/material.dart';
import 'package:flutter_challenges/days/day_001_ecommerce_product_deatils/screen_day_one.dart';

void main() {
  runApp(FlutterDailyChallenges());
}

class FlutterDailyChallenges extends StatelessWidget {
  const FlutterDailyChallenges({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ScreenDayOne());
  }
}
