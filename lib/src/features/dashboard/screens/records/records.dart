import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:dairy_farm_app/src/features/dashboard/screens/records/screens/record_cow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';

class Records extends StatelessWidget {
  const Records({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Column(
          children: [Text("Today's Record")],
        ),
        Positioned(
            bottom: 0,
            right: 0,
            child: SpeedDial(
              elevation: 0,
              backgroundColor: blackColor,
              foregroundColor: whiteColor,
              animatedIcon: AnimatedIcons.menu_close,
              overlayColor: blackColor,
              children: [
                SpeedDialChild(
                    child: const Icon(Icons.add),
                    label: "Milk",
                    onTap: () {
                      Get.to(const RecordMilk());
                    }),
                SpeedDialChild(child: const Icon(Icons.add), label: "Feeds")
              ],
            )),
      ],
    );
  }
}
