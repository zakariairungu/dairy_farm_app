import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:dairy_farm_app/src/features/dashboard/screens/home/widgets/header.dart';
import 'package:dairy_farm_app/src/features/dashboard/screens/home/widgets/reminder_rates.dart';
import 'package:dairy_farm_app/src/features/dashboard/screens/home/widgets/sliders.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeHeader(),
          const SizedBox(
            height: 10,
          ),
          const HomeSlider(),
          const ReminderAndRates(),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10)
            ),
            child: const Text(
              "Activities",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          const Divider(),
          const Text("Brian record some milk "),
          const Divider(),
        ],
      ),
    );
  }
}
