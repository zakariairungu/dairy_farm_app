import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome zack"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: primaryColor.withOpacity(.5)
              ),
              child: Icon(Icons.sunny),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "home",),
          BottomNavigationBarItem(icon: Icon(Icons.book),label: "records",),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "me",),
        ]
      ),
    );
  }
}
