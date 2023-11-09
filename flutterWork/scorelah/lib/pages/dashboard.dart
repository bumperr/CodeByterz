
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:scorelah/bar%20graph/bar%20graph/bar_graph.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: const Text(
        'Performance',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Poppins',
          fontSize: 16,
          fontWeight: FontWeight.w800,
          height: 1,
        ),
      ),
      leading: IconButton(onPressed: () {
        Navigator.pop(context);
      },
      icon:const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ))),
          noOfQuestionsToday(),
          streakAndCompletedSection(),
          avgScoreVisual()
        ],
      ),
    );
  }
}

Column avgScoreVisual() {
  List<double> scoreSummary = [
    40.00,
    62.00,
    79.00,
    72.00,
  ];
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 3),
        child: Container(
          height: 369,
          width: 360,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 4),
                    blurRadius: 4)
              ],
              color: const Color(0xFF5D6DF5),
              border: Border.all(
                  color: const Color.fromRGBO(217, 217, 217, 1), width: 1)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Average Score',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color(0xFFD9FBA5),
                              fontFamily: 'Poppins',
                              fontSize: 24,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Goal: 80%',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: const Color(0xFFD9FBA5).withAlpha(200),
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                    child: CircularPercentIndicator(
                      radius: 40,
                      lineWidth: 15,
                      percent: 0.72,
                      progressColor: const Color(0xffd9fba5),
                      backgroundColor: const Color(0xffd9fba5).withAlpha(100),
                      circularStrokeCap: CircularStrokeCap.round,
                      center: const Text(
                        '70%',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: SizedBox(
                  height: 200,
                  child: ScoreBarGraph(
                    scoreSummary: scoreSummary,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ],
  );
}

Row streakAndCompletedSection() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
            child: Container(
              width: 170,
              height: 195,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        offset: Offset(0, 4),
                        blurRadius: 4)
                  ],
                  color: const Color(0xffd9fba5),
                  border: Border.all(
                      color: const Color.fromRGBO(217, 217, 217, 1), width: 1)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: SvgPicture.asset('assets/lightning-icon.svg',
                        width: 55, height: 55),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Longest Streak',
                      style: TextStyle(
                          color: Color(0xff5D6DF5),
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          height: 1),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '62',
                      style: TextStyle(
                          color: Color(0xFF182CD4),
                          fontFamily: 'Poppins',
                          fontSize: 50,
                          fontWeight: FontWeight.w800,
                          height: 1),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
            child: Container(
              width: 170,
              height: 195,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        offset: Offset(0, 4),
                        blurRadius: 4)
                  ],
                  color: const Color(0xffd9fba5),
                  border: Border.all(
                      color: const Color.fromRGBO(217, 217, 217, 1), width: 1)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: SvgPicture.asset('assets/check-fill.svg',
                        width: 60, height: 60),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    child: Text(
                      'Quiz Completed',
                      style: TextStyle(
                          color: Color(0xff5D6DF5),
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          height: 1),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      '89',
                      style: TextStyle(
                          color: Color(0xFF182CD4),
                          fontFamily: 'Poppins',
                          fontSize: 50,
                          fontWeight: FontWeight.w800,
                          height: 1),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

Column noOfQuestionsToday() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        child: Container(
          width: 360,
          height: 160,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  offset: Offset(0, 4),
                  blurRadius: 4)
            ],
            color: const Color(0xff182cd4),
            border: Border.all(
              color: const Color(0xffd9fba5),
              width: 1,
            ),
          ),
          child: const SizedBox(
              width: 430,
              height: 116,
              child: Stack(children: <Widget>[
                Positioned(
                    top: 30,
                    left: 20,
                    child: Text(
                      'qlfzn, you answered ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color(0xffd9fba5),
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          height: 1),
                    )),
                Positioned(
                    top: 104,
                    left: 140,
                    child: Text(
                      'questions today 💪🏻',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color(0xffd9fba5),
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          height: 1),
                    )),
                Positioned(
                    top: 65,
                    left: 20,
                    child: Text(
                      '28',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xffd9fba5),
                          fontFamily: 'Poppins',
                          fontSize: 70,
                          fontWeight: FontWeight.w800,
                          height: 1),
                    )),
              ])),
        ),
      ),
    ],
  );
}
