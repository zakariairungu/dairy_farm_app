import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:dairy_farm_app/src/constants/text.dart';
import 'package:flutter/material.dart';

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
                          icon: Icon(Icons.close,color: isDark ? primaryColor : blackColor))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
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

