import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:secconed_sessional_tic_tac/Contect_us.dart';
import 'package:secconed_sessional_tic_tac/level_page.dart';
import 'dart:io';



void main() => runApp((Splashscreen()));

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen.withScreenFunction(
        splash: Image.asset(
          ("images/sau.png"),

        ),
        splashTransition: SplashTransition.rotationTransition,
        screenFunction: ()async{
          return levl();
        },
      ),
    );
  }
}
