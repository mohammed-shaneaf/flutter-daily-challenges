import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(0, 97, 95, 95),
        borderRadius: BorderRadius.circular(6),
        boxShadow: const [
          BoxShadow(color: Color(0x0A000000), offset: Offset(0, 1), blurRadius: 4),
        ],
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          suffixIcon: Icon(Icons.camera_alt_outlined),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          fillColor: const Color.fromARGB(0, 0, 0, 0),
          enabledBorder: InputBorder.none,
          hintText: 'Search For . . . ',
        ),
      ),
    );
  }
}
