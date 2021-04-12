import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
quizbrain brain = quizbrain();



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
  void checkans(bool userslect){
bool correctans = brain.getcorrectans();
if(brain.isfinshed()==true){
  Alert(context: context,
  title: "Quiz is End",
  desc: "You have reached at the end of Quiz").show();
  brain.resest();
  scorekeeper=[];
}else{
if(userslect==correctans){
 setState(() {
   scorekeeper.add(Icon(Icons.check,color: Colors.green,));
 });
}
else{
  setState(() {
    scorekeeper.add(Icon(Icons.close,color: Colors.red,));
  });
}
brain.nextquestion();
}
  }
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
                  brain.getquestiontext(),
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
                   checkans(true);

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
                  checkans(false);


                  },
                ))),
        Row(children: scorekeeper,)
      ],
    );
  }
}
