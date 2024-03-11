import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:dairy_farm_app/src/constants/size.dart';
import 'package:dairy_farm_app/src/features/authentication/login/widgets/login_form.dart';
import 'package:dairy_farm_app/src/features/authentication/login/widgets/login_header.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(fDefaultPadding),
        color: isDark?greyColor: primaryColor,
        child: ListView(
          shrinkWrap: true,
          children: [
            LoginHeader(isDark: isDark),
            const LoginForm(),
          ],
        ),
      ),
    );
  }
}

