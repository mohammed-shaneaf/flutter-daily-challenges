import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,
    required PageController controller,
    required this.images,
  }) : _controller = controller;

  final PageController _controller;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SmoothPageIndicator(
        controller: _controller,
        count: images.length,
        effect: const ExpandingDotsEffect(
          activeDotColor: Colors.green,
          dotColor: Colors.black26,
          dotHeight: 6,
          dotWidth: 6,
          expansionFactor: 3,
        ),
      ),
    );
  }
}
