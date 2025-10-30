import 'package:flutter/material.dart';

class PhoneField extends StatelessWidget {
  final TextEditingController controller;
  const PhoneField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(
        labelText: 'Phone Number',
        prefixIcon: Padding(
          padding: EdgeInsets.all(12),
          child: Text('+', style: TextStyle(fontSize: 16)),
        ),
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.phone,
    );
  }
}
