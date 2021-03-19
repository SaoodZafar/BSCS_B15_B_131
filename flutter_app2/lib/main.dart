import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: Icon(Icons.menu),
            title: Center(
              child: Text(
                "Hi! Ummaah",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            actions: [
              Icon(
                Icons.search,
              )
            ],
          ),
          body: Column(

            children: [

              Container(
                padding: EdgeInsets.symmetric(horizontal: 0.0,vertical: 30.0),
                height: 300,
                color: Colors.blue,
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.ring_volume_rounded,
                            size: 50.0,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 30.0,
                          ),
                          Text(
                            "1 new Massage",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(children: [
                        Row(
                          children: [
                            Image.asset("../images/ghj.jpg",
                              height: 100.0,
                              width: 100.0,
                            ),
                            Text("Hy How Re you did You See This")
                          ],
                        )
                      ],)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
