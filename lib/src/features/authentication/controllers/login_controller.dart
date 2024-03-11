import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static GetxController get instance => Get.find();

  final email = "".obs;

  void setEmail(String value) => email.value = value;

  final emailController = TextEditingController();

  final password = "".obs;

  void setPassword(String value) => password.value = value;

  final passwordController = TextEditingController();

  RxBool isVisible = true.obs;

  void changeVisibility() {
    isVisible.value = !isVisible.value;
  }
}
