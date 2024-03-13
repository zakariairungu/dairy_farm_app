import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:dairy_farm_app/src/constants/size.dart';
import 'package:flutter/material.dart';

class RecordMilk extends StatelessWidget {
  const RecordMilk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: const Text("Record Milk"),
        elevation: 10,
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(fDefaultPadding),
        child: ListView(
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Today", style: TextStyle(fontSize: 30)),
                Text("16/12/2022 11:00am"),
              ],
            ),
            const SizedBox(height: 10),
            const Text("All cows"),
            const Divider(),
            const SizedBox(height: 10),
            _buildCowInfo("Sabu", "12345"),
            const SizedBox(height: 10),
            _buildCowInfo("Sabu", "12345"),
            const SizedBox(height: 10),
            const Divider(),
            const Text("litre: 100", textAlign: TextAlign.end),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCowInfo(String name, String id) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(border: Border.all(width: 1)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(name,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold)),
              Text(id, style: const TextStyle(fontSize: 20)),
            ],
          ),
          const Padding(
            padding:  EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Liters : ",
                  style: TextStyle(fontSize: 16),
                ),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(),
                      contentPadding: EdgeInsets.all(5),
                      isCollapsed: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
