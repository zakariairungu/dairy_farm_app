import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:dairy_farm_app/src/constants/size.dart';
import 'package:dairy_farm_app/src/constants/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      body: Container(
        color: isDark ? greyColor : primaryColor,
        padding: const EdgeInsets.all(fDefaultPadding),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: isDark ? primaryColor : blackColor,
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    fForgotPasswordTitle,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Text(
                    "once you send check you email",
                    style: Theme.of(context).textTheme.titleSmall,
                    textAlign: TextAlign.center,
                  ),
                  Icon(
                    Icons.mail,
                    size: 150,
                    color: isDark ? primaryColor : blackColor,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Enter you email",
                  prefixIcon: Icon(Icons.email),
                )),
            const SizedBox(
              height: 10,
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
                  fForgotPasswordTitle.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: isDark ? blackColor : whiteColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
