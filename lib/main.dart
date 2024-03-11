import 'package:dairy_farm_app/src/features/authentication/splash_screen/splash_screen.dart';
import 'package:dairy_farm_app/src/utils/theme.dart/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: FTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}
