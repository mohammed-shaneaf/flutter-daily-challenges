import 'package:flutter/material.dart';

class ProductNameAndIcon extends StatelessWidget {
  const ProductNameAndIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Text(
            'Naturel Red Apple',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border_outlined)),
        ],
      ),
    );
  }
}
