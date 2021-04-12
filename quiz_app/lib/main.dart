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
  List <Icon> scorekeeper=[];
  @override
  Widget build(BuildContext context) {

    return Column(

      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  "Question 1",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black,
                  ),
                ),
              ),
            )),
        Expanded(
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: TextButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.greenAccent)),
                  child: Text(
                    "True",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      scorekeeper.add(Icon(Icons.check,
                        color: Colors.green,
                      ),);
                    });

                  },
                ))),
        Expanded(
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: TextButton(
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.redAccent)
                  ),
                  child: Text(
                    "False",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      scorekeeper.add(Icon(Icons.close,
                        color: Colors.red,
                      ));

                    });


                  },
                ))),
        Row(children: scorekeeper,)
      ],
    );
  }
}
