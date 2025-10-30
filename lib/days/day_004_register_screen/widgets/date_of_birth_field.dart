import 'package:flutter/material.dart';

class DateOfBirthField extends StatelessWidget {
  final TextEditingController controller;
  const DateOfBirthField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: true,
      onTap: () async {
        final picked = await showDatePicker(
          context: context,
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
          initialDate: DateTime(2000),
        );
        if (picked != null) {
          controller.text =
              '${picked.day.toString().padLeft(2, '0')}/${picked.month.toString().padLeft(2, '0')}/${picked.year}';
        }
      },
      decoration: const InputDecoration(
        labelText: 'Birth of date',
        suffixIcon: Icon(Icons.calendar_today_outlined),
        border: OutlineInputBorder(),
      ),
    );
  }
}
