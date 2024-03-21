import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black
        ),
        child: Stack(
          children: [
            LineChart(
              LineChartData(
                borderData: FlBorderData(show: false),
                titlesData: const FlTitlesData(show: false),
                gridData: const FlGridData(
                  show: false,
                ),
                minY: 0,
                minX: 0,
                maxX: 3,
                maxY: 80,
                lineBarsData: [
                  LineChartBarData(
                    dotData: FlDotData(
                      show: true,
                      getDotPainter: (spot, percent, barData, index) {
                        if (index == 2) {
                          // Check if index is the last two dots
                          return FlDotCirclePainter(
                            radius: 6,
                            color: Colors.black, // Color for highlighted dots
                            strokeWidth: 2,
                            strokeColor: Colors.white,
                          );
                        }
                        if (index == 3) {
                          // Check if index is the last two dots
                          return FlDotCirclePainter(
                            radius: 6,
                            color: Colors.white, // Color for highlighted dots
                            strokeWidth: 2,
                            strokeColor: Colors.white,
                          );
                        }
                         else {
                          return FlDotCirclePainter(
                            radius: 0,
                          );
                        }
                      },
                    ),
                    barWidth: 2,
                    color: Colors.white,
                    spots: const [
                      FlSpot(0, 30),
                      FlSpot(1, 40),
                      FlSpot(2, 75),
                      FlSpot(3, 65),
                    ],
                    isCurved: true,
                    // belowBarData: BarAreaData(
                    //   show: true,
                    //   gradient: LinearGradient(
                    //     begin: Alignment.topRight,
                    //     end: Alignment.bottomRight,
                    //     colors: [
                    //       const Color.fromARGB(255, 94, 255, 0).withOpacity(1),
                    //       const Color.fromARGB(255, 0, 0, 0).withOpacity(0),
                    //     ],
                    //   ),
                    // ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 140,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(child: Text("Today", style: TextStyle(fontSize: 10,color: Colors.black))),
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              text: "-20L ",
                              style: TextStyle(color: Colors.red, fontSize: 12),
                              children: [
                                TextSpan(
                                  text: "30L",
                                  style: TextStyle(color: Colors.black, fontSize: 15),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Text("Yesterday", style: TextStyle(fontSize: 10,))),
                        Expanded(child: Text("60L", textAlign: TextAlign.end,style: TextStyle())),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  border: Border.all(width: 0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(8.0),
                child: const Text("Milk"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
