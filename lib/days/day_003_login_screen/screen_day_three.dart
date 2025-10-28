import 'package:flutter/material.dart';
import 'package:flutter_challenges/days/day_003_login_screen/widgets/social_button.dart';

class ScreenDayThree extends StatelessWidget {
  const ScreenDayThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  fillColor: Colors.grey.shade300,
                  filled: true,
                ),
              ),
              SizedBox(height: 12),
              Text('Password'),
              SizedBox(height: 3),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  fillColor: Colors.grey.shade300,
                  filled: true,
                ),
              ),
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
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  maximumSize: Size(double.infinity, 56),
                  minimumSize: Size(double.infinity, 56),
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () {},
                child: Text(
                  'Log in',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(color: Colors.red, thickness: 1),
                  Text('Or', style: TextStyle(color: Colors.grey.shade300)),

                  Divider(color: Colors.red, thickness: 2),
                ],
              ),
              SizedBox(height: 24),
              SocialButton(
                title: 'Google',
                image: 'assets/svgs/google.svg',
                onpressed: () {},
              ),
              SizedBox(height: 12),
              SocialButton(
                title: 'Fecebook',
                image: 'assets/svgs/facebook.svg',
                onpressed: () {},
              ),
              SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
