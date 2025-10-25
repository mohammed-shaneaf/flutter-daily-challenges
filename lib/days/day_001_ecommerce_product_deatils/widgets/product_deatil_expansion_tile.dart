import 'package:flutter/material.dart';

class ProductDeatilExpansionTile extends StatelessWidget {
  const ProductDeatilExpansionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.green),
          child: const ExpansionTile(
            tilePadding: EdgeInsets.symmetric(horizontal: 16),
            childrenPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
            title: Text('Product Detail', style: TextStyle(fontWeight: FontWeight.w700)),
            trailing: Icon(Icons.expand_more), // يلف تلقائياً مع الحالة
            children: [
              Text(
                'Apples are nutritious. Apples may be good for weight loss. '
                'Apples may be good for your heart. As part of a healthful and varied diet.',
                textAlign: TextAlign.start,
                style: TextStyle(height: 1.4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
