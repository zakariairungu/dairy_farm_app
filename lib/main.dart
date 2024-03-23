import 'package:dairy_farm_app/src/features/dashboard/screens/dashboard.dart';
import 'package:dairy_farm_app/src/utils/theme.dart/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        defaultTransition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        debugShowCheckedModeBanner: false,
        theme: FTheme.lightTheme,
        darkTheme: FTheme.darkTheme,
        themeMode: ThemeMode.system,
        home: const Dashboard());
  }
}
