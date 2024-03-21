import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:flutter/material.dart';

class UserManagement extends StatelessWidget {
  const UserManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UserManagement"),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: blackColor.withOpacity(.1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1)),
                    child: ListTile(
                        leading: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 1)),
                          child: const Icon(Icons.person),
                        ),
                        subtitle: const Text("admin"),
                        title: const Text("Zakaria"),
                        trailing: ElevatedButton(
                            onPressed: () {}, child: const Text("Disable")))),
              );
            },
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text("Add User"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
