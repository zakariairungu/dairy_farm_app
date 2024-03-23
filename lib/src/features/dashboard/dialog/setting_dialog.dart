import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:dairy_farm_app/src/constants/text.dart';
import 'package:dairy_farm_app/src/features/dashboard/screens/animal_management/animal_management.dart';
import 'package:dairy_farm_app/src/features/dashboard/screens/profile/profile.dart';
import 'package:dairy_farm_app/src/features/dashboard/screens/user_management/user_management.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<dynamic> setting(BuildContext context, bool isDark) {
  return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            decoration: BoxDecoration(
                color: isDark ? greyColor : primaryColor,
                borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      fSetting,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.close,
                            color: isDark ? primaryColor : blackColor))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  onTap: () {
                    
                    Navigator.pop(context);
                    Get.to(const Profile());
                  },
                  leading: Icon(Icons.person,
                      color: isDark ? primaryColor : blackColor),
                  title: Text(fProfile,
                      style: Theme.of(context).textTheme.titleSmall),
                  trailing: Icon(
                    Icons.edit,
                    color: isDark ? primaryColor : blackColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  onTap: () {
                    
                    Navigator.pop(context);
                    Get.to(const UserManagement());
                  },
                  leading: Icon(Icons.person_search_sharp,
                      color: isDark ? primaryColor : blackColor),
                  title: Text(
                    fUserManagement,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  onTap: () {
                    
                    Navigator.pop(context);
                    Get.to(const AnimalManagement());
                  },
                  leading: Icon(Icons.search,
                      color: isDark ? primaryColor : blackColor),
                  title: Text(
                    "Animal Management",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(fBilling,
                      style: Theme.of(context).textTheme.titleSmall),
                  trailing: Icon(Icons.money,
                      color: isDark ? primaryColor : blackColor),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(fThemeMode,
                        style: Theme.of(context).textTheme.titleSmall),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.dark_mode,
                            color: isDark ? primaryColor : blackColor)),
                  ],
                ),
                const Divider(),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      fLogOut,
                      style: TextStyle(color: Colors.red),
                    ))
              ],
            ),
          ),
        );
      });
}
