import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstAndLastNameTextField extends StatelessWidget {
  const FirstAndLastNameTextField({
    super.key,
    required TextEditingController firstName,
    required TextEditingController lastName,
  }) : _firstName = firstName,
       _lastName = lastName;

  final TextEditingController _firstName;
  final TextEditingController _lastName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: _firstName,
            decoration: const InputDecoration(
              labelText: 'First Name',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: TextFormField(
            controller: _lastName,
            decoration: const InputDecoration(
              labelText: 'Last Name',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
