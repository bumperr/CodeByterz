import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String question;
  final List<String> options;
  final BoxDecoration difficulty=  BoxDecoration( color: Colors.blue, // Change color as needed
    borderRadius: BorderRadius.circular(12.0));

  QuizWidget({super.key, required this.question, required this.options});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: difficulty,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Text(
                question,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            SizedBox(height: 20), // Add space between question and answers
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle option selection
                    },
                    child: Text(options[0]),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 60), // Adjust button height
                    ),
                  ),
                ),
                SizedBox(height: 10), // Add space between buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle option selection
                    },
                    child: Text(options[1]),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 60), // Adjust button height
                    ),
                  ),
                ),
                SizedBox(height: 10), // Add space between buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle option selection
                    },
                    child: Text(options[2]),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 60), // Adjust button height
                    ),
                  ),
                ),
                SizedBox(height: 10), // Add space between buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle option selection
                    },
                    child: Text(options[3]),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 60), // Adjust button height
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
