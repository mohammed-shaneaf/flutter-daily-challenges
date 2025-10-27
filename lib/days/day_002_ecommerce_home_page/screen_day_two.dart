import 'package:flutter/material.dart';
import 'package:flutter_challenges/days/day_002_ecommerce_home_page/widgets/header_content.dart';

class ScreenDayTwo extends StatelessWidget {
  const ScreenDayTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(padding: const EdgeInsets.symmetric(horizontal: 16)),
            SliverAppBar(
              floating: true,
              pinned: true,
              snap: true,
              stretch: true,
              expandedHeight: 150,
              flexibleSpace: FlexibleSpaceBar(background: HeaderContent()),
            ),
          ],
        ),
      ),
    );
  }
}
