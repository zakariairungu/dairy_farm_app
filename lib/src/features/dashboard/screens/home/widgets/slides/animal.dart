import 'package:flutter/material.dart';

class Animals extends StatelessWidget {
  const Animals({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.amber.withOpacity(.3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Text("Animals"),
              ),
              Expanded(
                child: Text("NO"),
              ),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) {
            return Row(
              children: [
                Expanded(
                  child: Text("Animals"),
                ),
                Expanded(
                  child: Text("NO"),
                ),
              ],
            );
          })
        ],
      ),
    );
  }
}
