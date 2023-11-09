import 'package:flutter/material.dart';
import'../customwidget/quizWidget.dart';



class FYPMathPage extends StatelessWidget {
   FYPMathPage({super.key});

  //----------------quiz question generation (later use supabase)-----------------------------
  final List<QuizWidget> quizzes =  [
  QuizWidget(
  question: 'Solve 3x+2y',
  options: ['New York', 'London', 'Paris', 'Berlin'],
  ),
  QuizWidget(
  question: 'Integrate this',
  options: ['Vincent van Gogh', 'Leonardo da Vinci', 'Pablo Picasso','Murata'],
  ),
  // Add more QuizWidget instances as needed
  ];

  //------------------------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('For you' ,
          style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w800,
        ),
        ),

      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical, // Set the scroll direction to vertical
        itemCount: quizzes.length,
        itemBuilder: (context, index) {
          return quizzes[index];
        },
      ),
    );
  }
}
//------------------------------------------------------------------------------
