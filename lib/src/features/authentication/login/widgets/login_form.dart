import 'package:dairy_farm_app/src/constants/text.dart';
import 'package:dairy_farm_app/src/features/authentication/controllers/login_controller.dart';
import 'package:dairy_farm_app/src/features/authentication/forgot_password/forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    final bool isDark =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Form(
      autovalidateMode: AutovalidateMode.always, // Ensures auto-validation
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Obx(() {
            final email = controller.email.value;
            return TextFormField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                controller.setEmail(value);
              },
              controller: controller.emailController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: "Enter Name",
                hintText: "abc@gmail.com",
              ),
              style: TextStyle(color: isDark ? primaryColor : blackColor),
            );
          }),
          const SizedBox(
            height: 10,
          ),
          Obx(() {
            final password = controller.password.value;
            return TextFormField(
              controller: controller.passwordController,
              obscureText: controller.isVisible.value,
              onChanged: (value) {
                controller.setPassword(value);
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                labelText: "password",
                suffixIcon: IconButton(
                  onPressed: () {
                    controller.changeVisibility();
                  },
                  icon: Icon(controller.isVisible.value
                      ? Icons.visibility
                      : Icons.visibility_off),
                ),
              ),
            );
          }),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Get.to(const ForgotPassword());
              },
              child: Text(
                fForgotPassword,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: isDark ? primaryColor : blackColor),
              ),
            ),
          ),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: isDark ? primaryColor : blackColor,
                  side: BorderSide.none),
              onPressed: () {},
              child: Text(
                fLogin.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: isDark ? blackColor : whiteColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
