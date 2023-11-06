import 'package:quiz_app/bar%20graph/bar.dart';

class BarData {
  final double calcScore;
  final double algebraScore;
  final double probabilityScore;
  final double trigoScore;

  BarData(
      {required this.calcScore,
      required this.algebraScore,
      required this.probabilityScore,
      required this.trigoScore});

  List<IndividualBar> barData = [];

  //initialise bar data
  void initialiseBarData() {
    barData = [
      IndividualBar(x: 1, y: calcScore),
      IndividualBar(x: 2, y: algebraScore),
      IndividualBar(x: 3, y: probabilityScore),
      IndividualBar(x: 4, y: trigoScore)
    ];
  }
}
