import 'package:flutter/material.dart';

class DontHaveAcoountWidget extends StatelessWidget {
  const DontHaveAcoountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text.rich(
          TextSpan(
            text: 'Don\'t have an account ? ',
            children: [
              TextSpan(
                text: 'Sign Up',
                style: TextStyle(color: Colors.blueAccent),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
