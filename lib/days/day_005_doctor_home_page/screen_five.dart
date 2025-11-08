import 'package:flutter/material.dart';
import 'package:flutter_challenges/days/day_005_doctor_home_page/widgets/custom_doctor_app_bar.dart';

class ScreenFive extends StatelessWidget {
  const ScreenFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: [CustomDoctorAppBar()])),
    );
  }
}
