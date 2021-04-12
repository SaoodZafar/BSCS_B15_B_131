import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/widgets.dart';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.indigoAccent,
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

class _DiceState extends State<Dice> {
  var Dice1 = 1;
  var Dice2 = 1;
  var Dice3 = 1;
  var Dice4 = 1;
  var counter1 = 0;
  var counter2 = 0;
  var counter3 = 0;
  var counter4 = 0;
  var n = 0;
  var x = 0;
  var y = 0;
  var z = 0;
  int a = 0;
  int b = 0;
  int s = 0;
  bool onclick1;
  bool onclick2;
  bool onclick3;
  bool onclick4;
  var win = "Press for winner";
  var run1 =1;
  var run2 =0;
  var run3 =0;
  var run4 =0;
  void _findmax(n, x, y, z) {
    a = max(n, x);
    b = max(y, z);
    s = max(a, b);
  }

  void _incerment1() {
    setState(() {
      counter1++;
      n = n + Dice1;
    });
  }

  void _incerment2() {
    setState(() {
      counter2++;
      x = x + Dice2;
    });
  }

  void _incerment3() {
    setState(() {
      counter3++;

      y = y + Dice3;
    });
  }

  void _incerment4() {
    setState(() {
      counter4++;

      z = z + Dice4;
    });
  }

  void _maxshow(n, x, y, z, s) {
    if (s == n) {
      win = "Dice 1 is winner";
    }
    if (s == x) {
      win = "Dice 2 is winner";
    }
    if (s == y) {
      win = "Dice 3 is winner";
    }
    if (s == z) {
      win = "Dice 4 is winner";
    }
  }

  @override


  Widget build(BuildContext context) {
    var _press1;
    var _press2;
    var _press3;
    var _press4;
    if (counter1<5){
      onclick1=true;
    }
    if (counter1>5){
      onclick1=false;
    }
    if (counter2<5){
      onclick2=true;
    }
    if (counter2>5){
      onclick2=false;
    }
    if (counter3<5){
      onclick3=true;
    }
    if (counter3>5){
      onclick3=false;
    }
    if (counter4<5){
      onclick4=true;
    }
    if (counter4>5){
      onclick4=false;
    }
    if(run1==1){
      if(onclick1){
        _press1=(){
          setState(() {
            Dice1 = Random().nextInt(6) + 1;
            _incerment1();
            run1=0;
            run2=1;
            run3= 0;
            run4=0;
          });
          if(Dice1==6){
            run1=1;
            run2=0;
          }
        };
      }
    }
    if(run2==1){
      if(onclick2){
        _press2=(){
          setState(() {
            Dice2 = Random().nextInt(6) + 1;
            _incerment2();
            run1=1;
            run2=0;
            run3= 1;
            run4=0;
          });
          if(Dice2==6){
            run2=1;
            run3=0;
          }
        };
      }
    }


    if(run3==1){
      if(onclick3){
        _press3=(){
          setState(() {
            Dice3 = Random().nextInt(6) + 1;
            _incerment3();
            run1=0;
            run2=0;
            run3= 0;
            run4=1;
          });
          if(Dice3==6){
            run3=1;
            run4=0;
          }
        };
      }
    }
    if(run4==1){
      if(onclick4){
        _press4=(){
          setState(() {
            Dice4 = Random().nextInt(6) + 1;
            _incerment4();
            run1=1;
            run2=0;
            run3= 0;
            run4=0;
          });
          if(Dice4==6){
            run4=1;
            run1=0;
          }
        };
      }
    }



    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: FlatButton(
                  onPressed: _press1,
                  child: Image(
                    height: 100,
                    width: 100,
                    image: new AssetImage("../images/d$Dice1.png"),
                  )),
            ),
            Expanded(
              child: FlatButton(
                  onPressed:  _press2 ,
                  child: Image(
                    height: 100,
                    width: 100,
                    image: new AssetImage("../images/d$Dice2.png"),
                  )),
            ),
          ],
        ),
        SizedBox(
          height: 20,
          width: 20,
        ),
        Row(
          children: [
            Expanded(
              child: FlatButton(
                  onPressed:  _press3,
                  child: Image(
                    height: 100,
                    width: 100,
                    image: new AssetImage("../images/d$Dice3.png"),
                  )),
            ),
            Expanded(
              child: FlatButton(
                  onPressed: _press4,
                  child: Image(
                    height: 100,
                    width: 100,
                    image: new AssetImage("../images/d$Dice4.png"),
                  )),
            ),
          ],
        ),
        Expanded(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Dice 1 Totel = $n",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Dice 2 Totel = $x",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Dice 3 Totel = $y",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Dice 4 Totel = $z",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                _findmax(n, x, y, z);
              });
            },
            child: Text("Show Max =$s "),
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            color: Colors.yellowAccent,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                _maxshow(n, x, y, z, s);
              });
            },
            child: Text(" $win"),
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            color: Colors.yellowAccent,
          ),
        ),
      ],
    );
  }
}
