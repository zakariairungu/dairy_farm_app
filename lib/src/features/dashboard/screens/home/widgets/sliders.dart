import 'package:dairy_farm_app/src/features/dashboard/screens/home/widgets/slides/animal.dart';
import 'package:dairy_farm_app/src/features/dashboard/screens/home/widgets/slides/statistics.dart';
import 'package:flutter/material.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/3,
      child: PageView(
        controller: PageController(initialPage: 1,
    viewportFraction: 0.8,
    keepPage: true,),
        scrollDirection: Axis.horizontal,
        children: [
          Animals(),
          Statistics(),
          Container(
            padding: EdgeInsets.all(10),
            color: const Color.fromARGB(255, 47, 51, 47),
            child: Center(child: Text("zack")),
          ),
        ],
      ),
    );
  }
}

