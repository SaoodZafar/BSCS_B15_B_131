import 'package:quiz_app/Question.dart';


class quizbrain{
  int _questionNo=0;
  List <Question> _questionbank = [
    Question('Lentil, beans, and peas are a good source of vegan protein.', true),
    Question('Carbohydrates are good for you.', true),
    Question('You should eat fish or seafood twice a week.', false),
    Question('Ralph Lauren’s real name was Ralph Lifshitz.', false),
    Question('Mascara should be replaced every three months.', true),
    Question('The Flintstones and The Smurfs were both produced by Hanna-Barbera.', true),
    Question('The Hulk is green because of a printer glitch.', false),
    Question('Buzz Lightyear’s original name was Lunar Larry.', true),
    Question('Fresh fruit is a healthier daily dietary choice than dried fruit.', true),
    Question('Ab exercises are enough to lose your belly fat.', false),
    
  ];
  void nextquestion(){
    if(_questionNo < _questionbank.length-1){
      _questionNo++;
    }
  }
  String getquestiontext(){
    return _questionbank[_questionNo].QuestionText;
  }
  bool getcorrectans(){
    return _questionbank[_questionNo].QuestionAns;
  }
  bool isfinshed(){
    if(_questionNo>= _questionbank.length - 1){
      return true;
    }else{
      return false;
    }
  }
  void resest(){
    _questionNo=0;
  }
}