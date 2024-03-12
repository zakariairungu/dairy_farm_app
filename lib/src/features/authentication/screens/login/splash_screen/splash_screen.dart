import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:dairy_farm_app/src/constants/images.dart';
import 'package:dairy_farm_app/src/constants/text.dart';
import 'package:dairy_farm_app/src/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        color: isDark ? Colors.grey : primaryColor,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      fTitle,
                      style: Theme.of(context).textTheme.headlineLarge,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      fSubTitle,
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 1
                                  ..color = isDark ? primaryColor : Colors.black,
                              ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Lottie.asset(
                lottieSplash,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: isDark
                        ? const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 81, 95, 18),
                              Color.fromARGB(255, 223, 235, 59)
                            ],
                          )
                        : const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 30, 255, 1),
                              Color.fromARGB(255, 101, 202, 172)
                            ],
                          ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(fGetStartedTitle,
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(color: isDark?primaryColor:whiteColor)),
                    ElevatedButton(
                      onPressed: () {
                        Get.offAll(const Login());
                      },
                      child: const Text(fGetStarted),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
