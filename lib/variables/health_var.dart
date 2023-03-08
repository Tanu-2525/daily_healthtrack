import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class h_info extends StatelessWidget {
  final double calorie;
  final double max_cal;

  h_info({
    required this.calorie,
    required this.max_cal,

  });

  Map<String, double> mapData() => {
    "Calories": calorie
  };

  final colorList = <Color>[Colors.orange];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: PieChart(
        dataMap: mapData(),
        chartType: ChartType.ring,
        ringStrokeWidth: 8,
        baseChartColor: Colors.amberAccent!.withOpacity(0.15),
        legendOptions: LegendOptions(
          showLegends: false,

        ),
        colorList: colorList,
        chartValuesOptions: ChartValuesOptions(
          showChartValues: false,
          showChartValuesInPercentage: false,
          showChartValuesOutside: false,
        ),
        totalValue: max_cal,
      ),
    );
  }
}
