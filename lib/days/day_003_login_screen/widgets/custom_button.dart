import 'package:flutter/material.dart';

class CustomScreenThreeButton extends StatelessWidget {
  const CustomScreenThreeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        maximumSize: Size(double.infinity, 56),
        minimumSize: Size(double.infinity, 56),
        backgroundColor: Colors.blueAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () {},
      child: Text('Log in', style: TextStyle(fontSize: 16, color: Colors.white)),
    );
  }
}
