import 'package:flutter/material.dart';
import 'package:flutter_challenges/days/day_002_ecommerce_home_page/screen_day_two.dart';

void main() {
  runApp(FlutterDailyChallenges());
}

class FlutterDailyChallenges extends StatelessWidget {
  const FlutterDailyChallenges({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ScreenDayTwo());
  }
}
