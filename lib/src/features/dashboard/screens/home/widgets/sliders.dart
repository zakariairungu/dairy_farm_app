import 'package:dairy_farm_app/src/features/dashboard/screens/home/widgets/slides/animal.dart';
import 'package:dairy_farm_app/src/features/dashboard/screens/home/widgets/slides/feeds.dart';
import 'package:dairy_farm_app/src/features/dashboard/screens/home/widgets/slides/statistics.dart';
import 'package:flutter/material.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3,
      child: PageView(
        controller: PageController(
          initialPage: 1,
          viewportFraction: 0.8,
          keepPage: true,
        ),
        scrollDirection: Axis.horizontal,
        children: const [
          Animals(),
          Statistics(),
          Feeds()
        ],
      ),
    );
  }
}
