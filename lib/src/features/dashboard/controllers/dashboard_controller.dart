import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  static DashboardController get instance => Get.find();

  RxInt selectedIndex = 0.obs;

  RxBool isDarkMode = false.obs;

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    if (isDarkMode.value == false) {
      Get.changeThemeMode(ThemeMode.dark);
    }else{
      Get.changeThemeMode(ThemeMode.light);
    }
  }

  void isTaped(int index) {
    selectedIndex.value = index;
  }
}
