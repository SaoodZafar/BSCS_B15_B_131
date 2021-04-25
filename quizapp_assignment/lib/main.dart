import 'package:flutter/material.dart';
import 'package:quizapp_assignment/quiz_brain.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

quizbrain brain = quizbrain();
void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new QuizApp(),
  ));
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 1,
      navigateAfterSeconds: new first1(),
      title: new Text(
        "Welcom To Quiz App",
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),
      image: new Image.asset("images/qu.png"),
      photoSize: 100.0,
    );
  }
}



class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<Icon> scorekeeper = [];
  int truans = 0;


  void checkans(bool userslect) {
    bool correctans = brain.getcorrectans();
    if (brain.isfinshed() == true) {
      Alert(
              context: context,
              title: "Quiz is End",
              desc: "You have reached at the end of Quiz")
          .show();
      brain.resest();
      scorekeeper = [];
    } else {
      if (userslect == correctans) {
        setState(() {
          scorekeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        });
      } else {
        setState(() {
          scorekeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        });
      }
      brain.nextquestion();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
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
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.greenAccent)),
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
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.redAccent)),
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
      Row()

    ]);
  }



}
class first1 extends StatefulWidget {
  @override
  _first1State createState() => _first1State();
}

class _first1State extends State<first1> {
  @override
  Widget build(BuildContext context) {
    return Container(child:
      Center(
        child: Column(children: [
          Text("Contect Us Page",
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),

          ),
          Card(
            child: ListTile(
              title: Text('M Saood Zafar'),
              trailing: Icon(Icons.contacts_outlined),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('FA17-BCS-131-B15-B'),
              trailing: Icon(Icons.contacts_outlined),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Contect Us'),
              trailing: Icon(Icons.contacts_outlined),
            ),
          ),

          Text("Slect Your Choice",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),

          ),

          Row(children: [
            Expanded(
                child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.greenAccent)),
                      child: Text(
                        "MCQ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => mcq()),
                        );
                      },
                    ))),
            Expanded(
                child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.greenAccent)),
                      child: Text(
                        "True or False",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Quiz()),
                        );
                      },
                    ))),

          ],)

        ],),
      )


      ,);
  }
}



class mcq extends StatefulWidget {
  final _questions = const [
    {
      'questionText': 'Q1. Who created Flutter?',
      'answers': [
        {'text': 'Facebook', 'score': -2},
        {'text': 'Adobe', 'score': -2},
        {'text': 'Google', 'score': 10},
        {'text': 'Microsoft', 'score': -2},
      ],
    },
    {
      'questionText': 'Q2. What is Flutter?',
      'answers': [
        {'text': 'Android Development Kit', 'score': -2},
        {'text': 'IOS Development Kit', 'score': -2},
        {'text': 'Web Development Kit', 'score': -2},
        {
          'text':
          'SDK to build beautiful IOS, Android, Web & Desktop Native Apps',
          'score': 10
        },
      ],
    },
    {
      'questionText': ' Q3. Which programing language is used by Flutter',
      'answers': [
        {'text': 'Ruby', 'score': -2},
        {'text': 'Dart', 'score': 10},
        {'text': 'C++', 'score': -2},
        {'text': 'Kotlin', 'score': -2},
      ],
    },
    {
      'questionText': 'Q4. Who created Dart programing language?',
      'answers': [
        {'text': 'Lars Bak and Kasper Lund', 'score': 10},
        {'text': 'Brendan Eich', 'score': -2},
        {'text': 'Bjarne Stroustrup', 'score': -2},
        {'text': 'Jeremy Ashkenas', 'score': -2},
      ],
    },
    {
      'questionText':
      'Q5. Is Flutter for Web and Desktop available in stable version?',
      'answers': [
        {
          'text': 'Yes',
          'score': -2,
        },
        {'text': 'No', 'score': 10},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  _mcqState createState() => _mcqState();

  void setState(Null Function() param0) {}
}

class _mcqState extends State<mcq> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

