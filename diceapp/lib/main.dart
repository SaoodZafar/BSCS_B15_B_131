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
  var dice1_image = 1;
  var dice2_image = 1;
  var dice3_image = 1;
  var dice4_image = 1;
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
  void findmax(n, x, y, z) {
    a = max(n, x);
    b = max(y, z);
    s = max(a, b);
  }

  void _incerment1() {
    setState(() {
      counter1++;

      n = n + dice1_image;
    });
  }

  void _incerment2() {
    setState(() {
      counter2++;

      x = x + dice2_image;
    });
  }

  void _incerment3() {
    setState(() {
      counter3++;

      y = y + dice3_image;
    });
  }

  void _incerment4() {
    setState(() {
      counter4++;

      z = z + dice4_image;
    });
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
                      dice1_image = Random().nextInt(5) + 1;
                      _incerment1();
                      print("Totel Click 1 = $counter1");
                      print("Sum 1 = $n");
                    });
                  },
                  child: Image(
                    height: 100,
                    width: 100,
                    image: new AssetImage("../images/d$dice1_image.png"),
                  )),
            ),
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      dice2_image = Random().nextInt(5) + 1;
                      _incerment2();
                      print("Totel Click 2 = $counter2");
                      print("Sum 2 = $x");
                    });
                  },
                  child: Image(
                    height: 100,
                    width: 100,
                    image: new AssetImage("../images/d$dice2_image.png"),
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
                      dice3_image = Random().nextInt(5) + 1;
                      _incerment3();
                      print("Totel Click 3 = $counter3");
                      print("Sum 3 = $y");
                    });
                  },
                  child: Image(
                    height: 100,
                    width: 100,
                    image: new AssetImage("../images/d$dice3_image.png"),
                  )),
            ),
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      dice4_image = Random().nextInt(5) + 1;
                      _incerment4();
                      print("Totel Click 4 = $counter4");
                      print("Sum 4 = $z");
                    });
                  },
                  child: Image(
                    height: 100,
                    width: 100,
                    image: new AssetImage("../images/d$dice4_image.png"),
                  )),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          children: [

    TextField(
    obscureText: true,
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Dice1',
    ),
    )
  ])
      ],
    );
  }
}
