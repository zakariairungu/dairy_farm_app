import 'package:dairy_farm_app/src/constants/size.dart';
import 'package:flutter/material.dart';

Future<dynamic> addFeeds(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        child: Container(
          padding: const EdgeInsets.all(fDefaultPadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Add some feeds",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Kg : ",
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
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {}, child: const Text("Confirm"))
            ],
          ),
        ),
      );
    },
  );
}
