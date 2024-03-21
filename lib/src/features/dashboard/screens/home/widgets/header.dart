import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: blackColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hey zack",style: TextStyle(fontSize: 32,color: whiteColor),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Today can rain",style: TextStyle(fontSize: 18,color: whiteColor) ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("17\u00B0 c",style: TextStyle(fontSize: 18,color: whiteColor)),
                  const SizedBox(width: 3,),
                  Icon(Icons.sunny,color: whiteColor,)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
