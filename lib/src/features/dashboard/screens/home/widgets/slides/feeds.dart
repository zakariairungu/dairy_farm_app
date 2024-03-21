import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:flutter/material.dart';

class Feeds extends StatelessWidget {
  const Feeds({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        
        decoration: BoxDecoration(
          color: blackColor,
          borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}
