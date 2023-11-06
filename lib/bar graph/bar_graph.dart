import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'bar_data.dart';

class ScoreBarGraph extends StatelessWidget {
  final List scoreSummary;

  const ScoreBarGraph({super.key, required this.scoreSummary});

  @override
  Widget build(BuildContext context) {
    // initialise bar data
    BarData scoreBarData = BarData(
      calcScore: scoreSummary[0],
      algebraScore: scoreSummary[1],
      probabilityScore: scoreSummary[2],
      trigoScore: scoreSummary[3],
    );

    scoreBarData.initialiseBarData();

    return BarChart(
      BarChartData(
        minY: 0,
        maxY: 100,
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
          show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
            sideTitles:
                SideTitles(showTitles: true, getTitlesWidget: getBottomTitles),
          ),
        ),
        barGroups: scoreBarData.barData
            .map(
              (data) => BarChartGroupData(
                x: data.x,
                barRods: [
                  BarChartRodData(
                    toY: data.y,
                    color: Color(0xffd9fba5),
                    width: 20,
                    borderRadius: BorderRadius.circular(4),
                    backDrawRodData: BackgroundBarChartRodData(
                      show: true,
                      toY: 100,
                      color: Color(0xffd9fba5).withAlpha(100),
                    ),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}

Widget getBottomTitles(double value, TitleMeta meta) {
  Widget text;
  switch (value.toInt()) {
    case 1:
      text = const Text(
        'Calculus',
        style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.w600),
      );
      break;
    case 2:
      text = const Text(
        'Algebra',
        style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.w600),
      );
      break;
    case 3:
      text = const Text(
        'Probability',
        style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.w600),
      );
      break;
    case 4:
      text = const Text(
        'Trigonometry',
        style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.w600),
      );
      break;
    default:
      text = const Text(
        '',
        style: TextStyle(fontFamily: 'Poppins'),
      );
      break;
  }

  return SideTitleWidget(child: text, axisSide: meta.axisSide);
}
