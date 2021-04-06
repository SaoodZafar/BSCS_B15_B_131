import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/widgets.dart';
void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Dice App"),
      ),
      body: Dice(),
    ),
  ));
}
class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice>{
  var dice1_image = 1;
  var dice2_image = 1;
  var dice3_image = 1;
  var dice4_image = 1;
  var counter1 = 0;
  var counter2 = 0;
  var n= 0;
  var x= 0;
  void _incerment(){

  setState(() {
    counter1++;
    counter2++;
    n = n + dice1_image;
    x = x + dice2_image;
  });


  }
@override
  Widget build(BuildContext context) {
  return Column(
    children: [
      Row(
        children: [
          Expanded(
            child: FlatButton(onPressed:(){
              setState(() {
                dice1_image = Random().nextInt(5)+1;
                _incerment();
                print("Value1 = $counter1");
                print("Value1 = $n");
              });


            },
                child:
            Image(image: new AssetImage("../images/d$dice1_image.png"),)
            ),
          ),
          Expanded(
            child: FlatButton(onPressed:(){
              setState(() {
                dice2_image = Random().nextInt(5)+1;
                _incerment();
                print("Value2 = $counter2");
                print("Value2 = $x");
              });


            },
                child:
                Image(image: new AssetImage("../images/d$dice2_image.png"),)
            ),
          ),
        ],
      ),
      SizedBox(
        height: 20,
        width:20,
      ),
      Row(
        children: [
          Expanded(
            child: FlatButton(onPressed:(){
              setState(() {
                dice3_image = Random().nextInt(5)+1;
              });


            },
                child:
                Image(image: new AssetImage("../images/d$dice3_image.png"),)
            ),
          ),
          Expanded(
            child: FlatButton(onPressed:(){
              setState(() {
                dice4_image = Random().nextInt(5)+1;
              });


            },
                child:
                Image(image: new AssetImage("../images/d$dice4_image.png"),)
            ),
          ),
        ],
      )
    ],
  );

  }


}



