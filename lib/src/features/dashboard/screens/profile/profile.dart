import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:dairy_farm_app/src/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDark ? blackColor : primaryColor,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios,
              color: isDark ? primaryColor : blackColor),
        ),
        title: Text(
          "User Profile",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: true,
      ),
      body: Container(
        color: primaryColor,
        padding: const EdgeInsets.all(fDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                          color: Colors.black12,
                          child: Image.asset("assets/png/cow.png"))),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: primaryColor),
                    child: const Icon(
                      LineIcons.alternatePencil,
                      size: 18.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: double.infinity,
              height: 10,
            ),
            ListTile(
              onTap: () {
                Get.to(const Profile());
              },
              leading:
                  Icon(Icons.person, color: isDark ? primaryColor : blackColor),
              title: Text("Userame",
                  style: Theme.of(context).textTheme.titleSmall),
              trailing: Text("Zakaria irungu",
                  style: Theme.of(context).textTheme.titleSmall),
            ),
            ListTile(
              onTap: () {
                Get.to(const Profile());
              },
              leading:
                  Icon(Icons.mail, color: isDark ? primaryColor : blackColor),
              title:
                  Text("Email", style: Theme.of(context).textTheme.titleSmall),
              trailing: Text("Zacckirungu@gmail.com",
                  style: Theme.of(context).textTheme.titleSmall),
            ),
            ListTile(
              onTap: () {
                Get.to(const Profile());
              },
              leading: Icon(Icons.admin_panel_settings_outlined,
                  color: isDark ? primaryColor : blackColor),
              title:
                  Text("Role", style: Theme.of(context).textTheme.titleSmall),
              trailing:
                  Text("Admin", style: Theme.of(context).textTheme.titleSmall),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          child: Container(
                            padding: const EdgeInsets.all(fDefaultPadding),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Edit",style: Theme.of(context).textTheme.titleLarge,),
                                const SizedBox(height: 10,),
                                const TextField(
                                  decoration: InputDecoration(
                                    labelText: "Name",
                                    prefixIcon: Icon(Icons.person)
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                ElevatedButton(onPressed: (){}, child: const Text("Confirm"))
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: const Text("Edit"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
