import 'package:flutter/material.dart';

class CustomDivder extends StatelessWidget {
  const CustomDivder({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey.shade300,
      height: 24,
      thickness: 2,
      indent: 25,
      endIndent: 25,
    );
  }
}
