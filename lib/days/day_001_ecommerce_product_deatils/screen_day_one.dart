import 'package:flutter/material.dart';
import 'package:flutter_challenges/days/day_001_ecommerce_product_deatils/widgets/custom_button.dart';
import 'package:flutter_challenges/days/day_001_ecommerce_product_deatils/widgets/custom_divider.dart';
import 'package:flutter_challenges/days/day_001_ecommerce_product_deatils/widgets/dots_indicator.dart';
import 'package:flutter_challenges/days/day_001_ecommerce_product_deatils/widgets/image_preview.dart';
import 'package:flutter_challenges/days/day_001_ecommerce_product_deatils/widgets/nutrition_facts.dart';
import 'package:flutter_challenges/days/day_001_ecommerce_product_deatils/widgets/product_deatil_expansion_tile.dart';
import 'package:flutter_challenges/days/day_001_ecommerce_product_deatils/widgets/product_detalis_header.dart';
import 'package:flutter_challenges/days/day_001_ecommerce_product_deatils/widgets/product_name_and_icon.dart';
import 'package:flutter_challenges/days/day_001_ecommerce_product_deatils/widgets/product_rating.dart';
import 'package:flutter_challenges/days/day_001_ecommerce_product_deatils/widgets/select_count_of_product.dart';

class ScreenDayOne extends StatefulWidget {
  const ScreenDayOne({super.key});

  @override
  State<ScreenDayOne> createState() => _ScreenDayOneState();
}

class _ScreenDayOneState extends State<ScreenDayOne> {
  final _controller = PageController();

  final images = [
    'assets/images/apple.png',
    'assets/images/apple.png',
    'assets/images/apple.png',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double rating = 3.5;
    int starCount = 5;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: ProductDeatilsHeader(),
            ),
            ImagePreview(size: size, controller: _controller, images: images),
            const SizedBox(height: 20),
            DotsIndicator(controller: _controller, images: images),
            const SizedBox(height: 20),
            ProductNameAndIcon(),
            const SizedBox(height: 11),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                '1kg , Price',
                style: TextStyle(
                  color: Color(0xff7C7C7C),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 30),
            SelectCountOfProduct(),
            SizedBox(height: 30),
            CustomDivder(),
            ProductDeatilExpansionTile(),
            SizedBox(height: 20),
            CustomDivder(),
            NutritionFacts(),
            SizedBox(height: 20),
            CustomDivder(),
            const SizedBox(height: 16),
            ProductRating(rating: rating, starCount: starCount),
            CustomDivder(),
            const SizedBox(height: 20),
            CustomButton(),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
