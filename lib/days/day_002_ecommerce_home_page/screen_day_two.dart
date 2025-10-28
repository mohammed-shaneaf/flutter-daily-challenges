import 'package:flutter/material.dart';
import 'package:flutter_challenges/days/day_002_ecommerce_home_page/widgets/header_content.dart';
import 'package:flutter_challenges/days/day_002_ecommerce_home_page/widgets/search_text_field.dart';

class ScreenDayTwo extends StatelessWidget {
  const ScreenDayTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: true,
                pinned: true,
                snap: true,
                stretch: true,
                expandedHeight: 150,
                flexibleSpace: FlexibleSpaceBar(background: HeaderContent()),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: SearchTextField(),
                    ),
                    const SizedBox(height: 12),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeaturedList extends StatelessWidget {
  const FeaturedList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        List.generate(4, (index) => Container(width: 100, height: 100, color: Colors.red)),
      ]),
    );
  }
}
