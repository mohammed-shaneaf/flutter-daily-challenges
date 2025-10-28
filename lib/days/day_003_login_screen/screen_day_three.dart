import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ScreenDayThree extends StatelessWidget {
  const ScreenDayThree({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 24),
              SvgPicture.asset('assets/svgs/logo_day_three.svg'),
              SizedBox(height: 32),
              Text(
                'Sign in to your Account',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
