import 'package:flutter/material.dart';
import 'package:flutter_challenges/days/day_003_login_screen/widgets/social_button.dart';

class SocailButtons extends StatelessWidget {
  const SocailButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialButton(
          title: 'Google',
          image: 'assets/images/google.png',
          onpressed: () {},
        ),
        SizedBox(height: 12),
        SocialButton(
          title: 'Fecebook',
          image: 'assets/images/fecebook.png',
          onpressed: () {},
        ),
      ],
    );
  }
}
