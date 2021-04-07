import 'package:flutter/cupertino.dart';
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
  var win = "Press for winner";
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
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      Dice1 = Random().nextInt(5) + 1;
                      _incerment1();
                      print("Totel Click 1 = $counter1");
                      print("Sum 1 = $n");
                    });
                  },
                  child: Image(
                    height: 100,
                    width: 100,
                    image: new AssetImage("../images/d$Dice1.png"),
                  )),
            ),
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      Dice2 = Random().nextInt(5) + 1;
                      _incerment2();
                      print("Totel Click 2 = $counter2");
                      print("Sum 2 = $x");
                    });
                  },
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
                  onPressed: () {
                    setState(() {
                      Dice3 = Random().nextInt(5) + 1;
                      _incerment3();
                      print("Totel Click 3 = $counter3");
                      print("Sum 3 = $y");
                    });
                  },
                  child: Image(
                    height: 100,
                    width: 100,
                    image: new AssetImage("../images/d$Dice3.png"),
                  )),
            ),
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      Dice4 = Random().nextInt(5) + 1;
                      _incerment4();
                      print("Totel Click 4 = $counter4");
                      print("Sum 4 = $z");
                    });
                  },
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
              children: [Text("Dice 1 Totel = $n"), Text("Dice 2 Totel = $x")],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text("Dice 3 Totel = $y"), Text("Dice 4 Totel = $z")],
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
          ),
        ),
      ],
    );
  }
}
