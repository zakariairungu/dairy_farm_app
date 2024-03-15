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
        controller: PageController(viewportFraction: 0.9),
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color.fromARGB(255, 90, 209, 43),Color.fromARGB(255, 100, 121, 26)])
              ),
              padding: const EdgeInsets.all(10),
              
              child: Center(child: Text("zack")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              padding: EdgeInsets.all(10),
              
              child: Center(child: Text("zack")),
            ),
          ),
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

