import 'package:dairy_farm_app/src/constants/text.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            fTitle,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 1
                          ..color =isDark ? primaryColor : Colors.black,
                      ),
          ),
        ),
        
        Image.asset("assets/png/cow.png"),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            fLogin,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 1
                          ..color = isDark ? primaryColor : Colors.black,
                      ),
          ),
        ),
      ],
    );
  }
}
