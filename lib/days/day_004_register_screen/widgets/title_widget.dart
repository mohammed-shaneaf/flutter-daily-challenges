import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Get Started now',
          style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 6.h),
        Text(
          'Create an account or log in to explore about our app',
          style: TextStyle(fontSize: 17.sp, color: Colors.grey[600]),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 28.h),
      ],
    );
  }
}
