import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class step_info extends StatelessWidget {
  final double steps;
  final double max_steps;

  step_info({
    required this.steps,
    required this.max_steps,

  });

  Map<String, double> mapData() => {
    "Steps": steps
  };

  final colorList = <Color>[Colors.blue.shade900];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: PieChart(
        dataMap: mapData(),
        chartType: ChartType.ring,
        ringStrokeWidth: 8,
        baseChartColor: Colors.blue.shade700!.withOpacity(0.15),
        legendOptions: LegendOptions(
          showLegends: false,
        ),
        colorList: colorList,
        chartValuesOptions: ChartValuesOptions(
          showChartValues: false,
          showChartValuesInPercentage: false,
          showChartValuesOutside: false,
        ),
        totalValue: max_steps,
      ),
    );
  }
}
