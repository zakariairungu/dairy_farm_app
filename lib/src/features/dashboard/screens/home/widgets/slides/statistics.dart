import 'package:dairy_farm_app/src/constants/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
  const Statistics({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber,
        ),
        child: Stack(
          children: [
            LineChart(
              LineChartData(
                borderData: FlBorderData(show: false),
                titlesData: FlTitlesData(show: false),
                gridData: FlGridData(
                  show: false,
                ),
                minY: 0,
                minX: 0,
                maxX: 3,
                maxY: 80,
                lineBarsData: [
                  LineChartBarData(
                    dotData: FlDotData(show: false),
                    barWidth: 1,
                    color: blackColor,
                    spots: [
                      FlSpot(0, 30),
                      FlSpot(1, 40),
                      FlSpot(2, 75),
                      FlSpot(3, 65),
                    ],
                    isCurved: true,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)),
                width: 140,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(child: Text("Today")),
                        Expanded(
                          child: Text(
                            "20L  -30L",
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Text("Yestarday")),
                        Expanded(
                            child: Text(
                          "60L",
                          textAlign: TextAlign.end,
                        )),
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
                  border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(8.0),
                child: Text("Milk"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
