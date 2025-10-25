import 'package:flutter/material.dart';

class ImagePreview extends StatelessWidget {
  const ImagePreview({
    super.key,
    required this.size,
    required PageController controller,
    required this.images,
  }) : _controller = controller;

  final Size size;
  final PageController _controller;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(24),
      ),
      height: size.height * 0.32,
      child: PageView.builder(
        controller: _controller,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: AssetImage(images[index]), fit: BoxFit.cover),
            ),
            alignment: Alignment.center,
            child: Text(
              images[index].split('/').last.split('.').first,
              style: const TextStyle(
                color: Colors.transparent,
                fontWeight: FontWeight.bold,
                fontSize: 1,
                shadows: [
                  Shadow(color: Colors.black45, offset: Offset(2, 1), blurRadius: 4),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
