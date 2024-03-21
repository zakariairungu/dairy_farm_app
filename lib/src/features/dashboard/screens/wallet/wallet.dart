import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text(
          "My Wallet",
          style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
        ),
        const Text("Current Month"),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(10),
              color: blackColor),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Kawallet",
                    style: TextStyle(color: whiteColor),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 0, 255, 64)),
                      ),
                      Container(
                        height: 50,
                        width: 20,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.amber),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: whiteColor, borderRadius: BorderRadius.circular(5)),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Net Balance: 10,000",
                      style: TextStyle(),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.visibility)
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Balance Sheet",
          style: TextStyle(fontSize: 20),
        ),
        Container(
          padding: const EdgeInsets.all(5),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Date"),
              Row(
                children: [
                  Text(" Moneyin"),
                  SizedBox(
                    width: 10,
                  ),
                  Text("out"),
                ],
              )
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, Index) {
          return Container(
            padding: const EdgeInsets.all(5),
            
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("11/12/2023"),
                Row(
                  children: [
                    Text("15000"),
                    SizedBox(
                      width: 10,
                    ),
                    Text("5000"),
                  ],
                ),
              ],
            ),
          );
        }),
        const Divider(),
        Container(
          padding: const EdgeInsets.all(5),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total"),
              Row(
                children: [
                  Text(" 40000"),
                  SizedBox(
                    width: 10,
                  ),
                  Text("100"),
                ],
              )
            ],
          ),
        ),
        const Divider(),
        const Text("ksh: 150000",textAlign: TextAlign.end,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ],
    );
  }
}
