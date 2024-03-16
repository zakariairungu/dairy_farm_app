import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:dairy_farm_app/src/constants/size.dart';
import 'package:dairy_farm_app/src/features/dashboard/screens/records/screens/record_milk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';

import '../../dialog/add_feeds.dart';

class Records extends StatelessWidget {
  const Records({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Today's Record", style: TextStyle(fontSize: 20)),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Milk", style: TextStyle(fontSize: 14)),
                Text("12/12/2000", style: TextStyle(fontSize: 14)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: primaryColor.withOpacity(.3),
                  border: Border.all(width: .5)),
              child: ListView(
                shrinkWrap: true,
                children: const [
                  Text(
                    "11:20 am",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("zedu", style: TextStyle(fontSize: 14)),
                      Text("11 liters", style: TextStyle(fontSize: 14)),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Zedfr", style: TextStyle(fontSize: 14)),
                      Text("1 liter", style: TextStyle(fontSize: 14)),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Yawhite", style: TextStyle(fontSize: 14)),
                      Text("1 liter", style: TextStyle(fontSize: 14)),
                    ],
                  ),
                  Divider(),
                  Text(
                    "Total 12 liters",
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Feeds", style: TextStyle(fontSize: 14)),
                Text("12/12/2000", style: TextStyle(fontSize: 14)),
              ],
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: primaryColor.withOpacity(.3),
                  border: Border.all(width: .5)),
              child: ListView(
                shrinkWrap: true,
                children: const [
                  Text(
                    "19:00 am",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Salt", style: TextStyle(fontSize: 14)),
                      Text("11 kg", style: TextStyle(fontSize: 14)),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("growers", style: TextStyle(fontSize: 14)),
                      Text("30 kg", style: TextStyle(fontSize: 14)),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("feeders", style: TextStyle(fontSize: 14)),
                      Text("13kg", style: TextStyle(fontSize: 14)),
                    ],
                  ),
                  Divider(),
                  Text(
                    "Total 12 liters",
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
            ),
            
          ],
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(width: 1), shape: BoxShape.circle),
            child: SpeedDial(
              direction: SpeedDialDirection.left,
              elevation: 0,
              backgroundColor: primaryColor,
              foregroundColor: blackColor,
              animatedIcon: AnimatedIcons.menu_close,
              overlayColor: blackColor,
              children: [
                SpeedDialChild(
                    child: const Icon(Icons.add),
                    label: "Milk",
                    onTap: () {
                      Get.to(const RecordMilk());
                    }),
                SpeedDialChild(
                  child: const Icon(Icons.add),
                  label: "Feeds",
                  onTap: () {
                    addFeeds(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
