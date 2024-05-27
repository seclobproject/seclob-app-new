import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Chart Example'),
        ),
        body: Center(
          child: PieChart(
            PieChartData(
              sectionsSpace: 5,
              centerSpaceRadius: 40,
              sections: [
                PieChartSectionData(
                  color: Colors.blue,
                  value: 45,
                  title: 'Sunday',
                  radius: 80,
                ),
                PieChartSectionData(
                  color: Colors.green,
                  value: 40,
                  title: 'Mon',
                  radius: 80,
                ),
                PieChartSectionData(
                  color: Colors.orange,
                  value: 50,
                  title: 'Tue',
                  radius: 80,
                ),

                PieChartSectionData(
                  color: Colors.red,
                  value: 50,
                  title: 'Wed',
                  radius: 80,
                ),

                PieChartSectionData(
                  color: Colors.yellow,
                  value: 50,
                  title: 'Thu',
                  radius: 80,
                ),
                PieChartSectionData(
                  color: Colors.purple,
                  value: 50,
                  title: 'Fri',
                  radius: 80,
                ),
                PieChartSectionData(
                  color: Colors.deepPurple,
                  value: 50,
                  title: 'Sat',
                  radius: 80,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


