import 'package:flutter/material.dart';

class ProductDeatilsHeader extends StatelessWidget {
  const ProductDeatilsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [Icon(Icons.arrow_back_ios), Spacer(), Icon(Icons.abc_rounded)]);
  }
}
