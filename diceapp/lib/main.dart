import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Dice App"),
      ),
      body: dice(),
    ),
  ));
}
class dice extends StatefulWidget {
  @override
  _diceState createState() => _diceState();
}

class _diceState extends State<dice>{
@override
  Widget build(BuildContext context) {
  return Column(
    children: [],
  );

  }


}



