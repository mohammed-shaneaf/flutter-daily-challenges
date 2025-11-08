import 'package:flutter/material.dart';

class CustomDoctorAppBar extends StatelessWidget {
  const CustomDoctorAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Hi Omar',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      subtitle: Text('How Are you Today?', style: TextStyle(fontSize: 16)),
      trailing: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.teal,
        child: Icon(Icons.notifications, color: Colors.white, size: 27),
      ),
    );
  }
}
