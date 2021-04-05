import 'package:flutter/material.dart';
import 'package:flutter_app3rd/scr1.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign In Here',
      theme: ThemeData(primaryColor: Color.fromRGBO(68, 5, 246, 1)),
      home: LoginScreen(),

      debugShowCheckedModeBanner: false,
    );
  }
}