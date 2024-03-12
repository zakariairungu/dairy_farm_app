import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:dairy_farm_app/src/features/dashboard/controllers/dashboard_controller.dart';
import 'package:dairy_farm_app/src/features/dashboard/screens/home/home.dart';
import 'package:dairy_farm_app/src/features/dashboard/screens/profile/profile.dart';
import 'package:dairy_farm_app/src/features/dashboard/screens/records/records.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});


  @override
  Widget build(BuildContext context) {

    final List<Widget> pages=[
      const Home(),
      const Records(),
      const Profile()
    ];

    final controller=Get.put(DashboardController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome zack"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: primaryColor.withOpacity(.5)
              ),
              child: const Icon(Icons.sunny),
            ),
          ),
        ],
      ),
      body: Obx(()=>pages[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(()=>
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: BottomNavigationBar(
            currentIndex: controller.selectedIndex.value,
            onTap: controller.isTaped,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "home",),
              BottomNavigationBarItem(icon: Icon(Icons.book),label: "records",),
              BottomNavigationBarItem(icon: Icon(Icons.person),label: "me",),
            ]
          ),
        ),
      ),
    );
  }
}
