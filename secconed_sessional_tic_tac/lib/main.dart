import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
 void main ()=>runApp((Splashscreen()));
 class Splashscreen extends StatefulWidget {
   @override
   _SplashscreenState createState() => _SplashscreenState();
 }

 class _SplashscreenState extends State<Splashscreen> {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(),
     );
   }
 }

