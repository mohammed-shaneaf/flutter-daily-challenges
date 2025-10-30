import 'package:flutter/material.dart';
import 'package:flutter_challenges/days/day_003_login_screen/widgets/custom_button.dart';
import 'package:flutter_challenges/days/day_004_register_screen/widgets/toggle_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/date_of_birth_field.dart';
import 'widgets/email_field.dart';
import 'widgets/first_name_and_last_name_text_field.dart';
import 'widgets/logo_widget.dart';
import 'widgets/password_field.dart';
import 'widgets/phone_field.dart';
import 'widgets/title_widget.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  final _formKey = GlobalKey<FormState>();

  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _email = TextEditingController();
  final _date = TextEditingController();
  final _phone = TextEditingController();
  final _password = TextEditingController();

  bool isLogin = false;
  bool obscure = true;

  @override
  void dispose() {
    _firstName.dispose();
    _lastName.dispose();
    _email.dispose();
    _date.dispose();
    _phone.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                20.verticalSpace,
                const LogoWidget(),
                24.verticalSpace,
                const TitleWidget(),

                ToggleButton(
                  isLogin: isLogin,
                  onToggle: (v) => setState(() => isLogin = v),
                ),

                FirstAndLastNameTextField(firstName: _firstName, lastName: _lastName),
                16.verticalSpace,

                EmailField(controller: _email),
                16.verticalSpace,

                DateOfBirthField(controller: _date),
                16.verticalSpace,

                PhoneField(controller: _phone),
                16.verticalSpace,

                PasswordField(
                  controller: _password,
                  obscure: obscure,
                  onToggle: () => setState(() => obscure = !obscure),
                ),

                32.verticalSpace,
                CustomScreenThreeButton(text: 'Register'),
                20.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
