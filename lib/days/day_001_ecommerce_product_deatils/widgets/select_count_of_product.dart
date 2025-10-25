import 'package:flutter/material.dart';

class SelectCountOfProduct extends StatelessWidget {
  const SelectCountOfProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Icon(Icons.minimize, color: Colors.grey),
          SizedBox(width: 21),
          FloatingActionButton(
            backgroundColor: Color(0xFFFFFFFF),
            onPressed: () {},
            child: Text('1', style: TextStyle(fontSize: 20)),
          ),
          SizedBox(width: 21),
          Icon(Icons.add, color: Colors.green),
          Spacer(),
          Text(
            '\$4.99',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
