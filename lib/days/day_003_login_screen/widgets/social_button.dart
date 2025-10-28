import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.title,
    required this.image,
    required this.onpressed,
  });

  final String title;
  final String image;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        onPressed: onpressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16), // BorderRadius 16
            side: BorderSide(color: Color(0xFFDDDFDF), width: 1),
          ),
        ),
        child: ListTile(
          visualDensity: VisualDensity(vertical: VisualDensity.minimumDensity),
          leading: SvgPicture.asset(image, width: 24, height: 24),
          title: Text(title, style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
