import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Hey zack",style: TextStyle(fontSize: 32),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Today can rain" ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("17\u00B0 c"),
                SizedBox(width: 3,),
                Icon(Icons.sunny)
              ],
            ),
          ],
        ),
      ],
    );
  }
}
