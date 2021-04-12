import 'package:flutter/material.dart';

void main (){
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Xylo Phone"),
        centerTitle: true,
      ),
body: xylophone(),

    ),

  ));
}

class xylophone extends StatefulWidget {
  @override
  _xylophoneState createState() => _xylophoneState();
}

class _xylophoneState extends State<xylophone> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       TextButton(onPressed:(){},
            style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.red) ),
            child: Text("Select The Color",

            )),
        TextButton(onPressed:(){},
            style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.green) ),
            child: Text("Select The Music",

            )),
      ],
    );
  }
}
