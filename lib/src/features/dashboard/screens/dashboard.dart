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
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

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
        leading: Image.asset("assets/png/icon.png"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: blackColor)),
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
      body: Container(
          padding: const EdgeInsets.symmetric(
              horizontal: 16, vertical: 8),
          width: double.infinity,
          child: Obx(() => pages[controller.selectedIndex.value])),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx(
          () => Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: blackColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 1)),
            child: GNav(
              padding: const EdgeInsets.all(15),
              selectedIndex: controller.selectedIndex.value,
              gap: 8,
              onTabChange: controller.isTaped,
              color: whiteColor,
              tabBackgroundColor: whiteColor,
              tabs: const [
                GButton(
                  icon: LineIcons.cowboyHat,
                  text: fHome,
                ),
                GButton(
                  icon: Icons.book,
                  text: fRecords,
                ),
                GButton(
                  icon: Icons.wallet,
                  text: fWallet,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
