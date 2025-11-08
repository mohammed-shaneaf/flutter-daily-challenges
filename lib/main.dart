import 'package:flutter/material.dart';
import 'package:flutter_challenges/days/day_005_doctor_home_page/screen_five.dart';
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
      child: MaterialApp(debugShowCheckedModeBanner: false, home: ScreenFive()),
    );
  }
}
