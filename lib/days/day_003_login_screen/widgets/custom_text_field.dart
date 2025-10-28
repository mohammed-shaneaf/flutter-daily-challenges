import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  Icon? icon;
  CustomTextField({super.key, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: icon,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        fillColor: Colors.grey.shade300,
        filled: true,
      ),
    );
  }
}
