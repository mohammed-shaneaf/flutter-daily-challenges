import 'package:flutter/material.dart';
import 'package:flutter_challenges/days/day_004_register_screen/screen_four.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(FlutterDailyChallenges());
}

class FlutterDailyChallenges extends StatelessWidget {
  const FlutterDailyChallenges({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: ScreenFour()),
    );
  }
}
