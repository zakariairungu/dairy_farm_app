import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:flutter/material.dart';

class Animals extends StatelessWidget {
  const Animals({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: blackColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: whiteColor,
                    ),
                    child: const Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Animals",
                          ),
                        ),
                        Expanded(
                          child: Text("NO"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: blackColor,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Calf",
                            style: TextStyle(color: whiteColor),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "2",
                            style: TextStyle(color: whiteColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: blackColor,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Cows",
                            style: TextStyle(color: whiteColor),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "20",
                            style: TextStyle(color: whiteColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: blackColor,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "bulls",
                            style: TextStyle(color: whiteColor),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "2",
                            style: TextStyle(color: whiteColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(5)),
                        child: ElevatedButton(onPressed: (){}, child: const Text("View Animals"))
                      ),
                    ),
                    const Expanded(
                      child: Icon(Icons.notification_add)
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
