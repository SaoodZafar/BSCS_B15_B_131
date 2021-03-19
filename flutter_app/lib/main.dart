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
              "Profile",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          actions: [Icon(Icons.settings)],
        ),
        body: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image(
                      image: AssetImage("../images/ij.jpg"),
                      height: 400.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Looking Owsem",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 70.0,
              color: Colors.blueAccent,
                child:Row(

                  children: [

                    Text("Event Manager "
                        "Event Manager ",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white,

                    ),
                      maxLines: 2,
                    ),
                    Text("Event Manager",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,

                      ),
                      maxLines: 2,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
