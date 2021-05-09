import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secconed_sessional_tic_tac/level_page.dart';

class gamelavel extends StatefulWidget {
  @override
  _gamelavelState createState() => _gamelavelState();
}

class _gamelavelState extends State<gamelavel> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  bool Ohturn = true;
  var count0 = 0;
  var countx = 0;
  var count = 0;
  List<String> displayExOh = ["", "", "", "", "", "", "", "", "",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Column(

          children: [

            Expanded(
              flex: 3,
              child: GridView.builder(
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemCount: 9,
                  itemBuilder: (BuildContext, int index) {
                    return GestureDetector(
                      onTap: () {
                        _tapped(index);
                        _count();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.redAccent)),
                        child: Center(
                          child: Text(
                            displayExOh[index],
                            style: TextStyle(color: Colors.black54,
                                fontSize: 40),
                          ),
                        ),
                      ),
                    );
                  }

              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
             onPressed: (){
                _clearboard();
             },
              child: Text(
                "Resset",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => levl()),
                );
              },
              child: Text(
                "Go To Manue",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              onPressed: () => exit(0),
              child: Text(
                "Exit",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        )

    );
  }

  void _tapped(int index) {
    setState(() {
      if (Ohturn && displayExOh[index] == "") {
        displayExOh[index] = "0";
        count0 = count0 + 1;
      } else if (!Ohturn && displayExOh[index] == "") {
        displayExOh [index] = "x";
        countx = countx + 1;
      }
      Ohturn = !Ohturn;
      _checkwinner();
    });
  }

  void _checkwinner() {
    if (displayExOh[0] == displayExOh [1] &&
        displayExOh[0] == displayExOh [2] && displayExOh[0] != "") {

    }
    if (displayExOh[3] == displayExOh [4] &&
        displayExOh[3] == displayExOh [5] && displayExOh[3] != "") {

    }
    if (displayExOh[6] == displayExOh [7] &&
        displayExOh[6] == displayExOh [8] && displayExOh[6] != "") {

    }
    if (displayExOh[0] == displayExOh [3] &&
        displayExOh[0] == displayExOh [6] && displayExOh[0] != "") {

    }
    if (displayExOh[1] == displayExOh [4] &&
        displayExOh[1] == displayExOh [7] && displayExOh[1] != "") {

    }
    if (displayExOh[2] == displayExOh [5] &&
        displayExOh[2] == displayExOh [8] && displayExOh[2] != "") {

    }
    if (displayExOh[0] == displayExOh [4] &&
        displayExOh[0] == displayExOh [8] && displayExOh[0] != "") {

    }
    if (displayExOh[6] == displayExOh [4] &&
        displayExOh[6] == displayExOh [2] && displayExOh[6] != "") {

    }
  }



  void _count() {
    count = count + 1;
    if (count == 5) {
      if (count0 > countx) {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Winner is 0 "),
              );
            });
      }
      else{

        showDialog(
            context: context,
            builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Winner is x "),
          );
      }
        );}
  }

}
void _clearboard(){
    setState(() {
      for (int i =0; i<9;i++){
        displayExOh[i]="";
      }
    });
}

}