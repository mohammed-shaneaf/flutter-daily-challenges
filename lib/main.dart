import 'package:flutter/material.dart';
import 'package:flutter_challenges/days/day_003_login_screen/screen_day_three.dart';

void main() {
  runApp(FlutterDailyChallenges());
}

class FlutterDailyChallenges extends StatelessWidget {
  const FlutterDailyChallenges({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ScreenDayThree());
  }
}
