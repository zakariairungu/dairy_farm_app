import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:dairy_farm_app/src/constants/size.dart';
import 'package:dairy_farm_app/src/constants/text.dart';
import 'package:dairy_farm_app/src/features/dashboard/controllers/dashboard_controller.dart';
import 'package:dairy_farm_app/src/features/dashboard/dialog/setting_dialog.dart';
import 'package:dairy_farm_app/src/features/dashboard/screens/home/home.dart';
import 'package:dairy_farm_app/src/features/dashboard/screens/records/records.dart';
import 'package:dairy_farm_app/src/features/dashboard/screens/wallet/wallet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [const Home(), const Records(), const Wallet()];

    final controller = Get.put(DashboardController());
    final bool isDark =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDark ? blackColor : primaryColor,
        title: Text(
          "Welcome zack",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 2, color: blackColor)),
              child: IconButton(
                onPressed: () {
                  setting(context, isDark);
                },
                icon: const Icon(Icons.settings),
              ),
            ),
          ),
        ],
      ),
      body: Container(padding: const EdgeInsets.symmetric(horizontal: fDefaultPadding,vertical: 10),width: double.infinity, child: Obx(() => pages[controller.selectedIndex.value])),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx(
          () => Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: isDark ? blackColor : primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: controller.selectedIndex.value,
                onTap: controller.isTaped,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled),
                    label: fHome,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.book),
                    label: fRecords,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.wallet),
                    label: fWallet,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
