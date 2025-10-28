import 'package:flutter/material.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(color: Colors.grey.shade400, thickness: 1, endIndent: 10),
        ),
        Text('Or', style: TextStyle(color: Colors.grey.shade600)),
        Expanded(child: Divider(color: Colors.grey.shade400, thickness: 1, indent: 10)),
      ],
    );
  }
}
