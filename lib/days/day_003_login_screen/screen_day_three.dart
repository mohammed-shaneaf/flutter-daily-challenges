import 'package:flutter/material.dart';
import 'package:flutter_challenges/days/day_003_login_screen/widgets/custom_button.dart';
import 'package:flutter_challenges/days/day_003_login_screen/widgets/custom_text_field.dart';
import 'package:flutter_challenges/days/day_003_login_screen/widgets/dont_have_account.dart';
import 'package:flutter_challenges/days/day_003_login_screen/widgets/or_widget.dart';
import 'package:flutter_challenges/days/day_003_login_screen/widgets/social_buttons.dart';

class ScreenDayThree extends StatelessWidget {
  const ScreenDayThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 24),
                Image.asset('assets/images/logo_day_3.png'),
                SizedBox(height: 32),
                Text(
                  'Sign in to your Account',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                Text('Enter your email and password to log in'),
                SizedBox(height: 24),
                Text('Email'),
                SizedBox(height: 3),
                CustomTextField(),
                SizedBox(height: 12),
                Text('Password'),
                SizedBox(height: 3),
                CustomTextField(),
                SizedBox(height: 16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forget Password ?',
                      style: TextStyle(fontSize: 16, color: Colors.blueAccent),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                CustomScreenThreeButton(),
                SizedBox(height: 24),
                OrWidget(),
                SizedBox(height: 24),
                SocailButtons(),
                SizedBox(height: 53),
                DontHaveAcoountWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
