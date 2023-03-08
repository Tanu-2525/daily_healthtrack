import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class food_info extends StatelessWidget {
  final double food_cal;
  final double max_fcal;

  food_info({
    required this.food_cal,
    required this.max_fcal,

  });

  Map<String, double> mapData() => {
    "Food_Calories": food_cal
  };

  final colorList = <Color>[Colors.green.shade800];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: PieChart(
        dataMap: mapData(),
        chartType: ChartType.ring,
        ringStrokeWidth: 8,
        baseChartColor: Colors.green.shade600!.withOpacity(0.15),
        legendOptions: LegendOptions(
          showLegends: false,
        ),
        colorList: colorList,
        chartValuesOptions: ChartValuesOptions(
          showChartValues: false,
          showChartValuesInPercentage: false,
          showChartValuesOutside: false,
        ),
        totalValue: max_fcal,
      ),
    );
  }
}