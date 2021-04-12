import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
        centerTitle: true,
      ),
      body: Quiz(),
    ),
  ));
}
class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Question 1",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.black
            ),

          ),


        ))
        
      ],
    );
  }
}
