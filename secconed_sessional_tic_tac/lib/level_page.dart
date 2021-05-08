import 'package:flutter/material.dart';

class levl extends StatefulWidget {
  @override
  _levlState createState() => _levlState();
}

class _levlState extends State<levl> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       backgroundColor: Colors.yellowAccent,
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          shadowColor: Colors.amber,
          title: Text("Select The Level ",

          ),
          centerTitle: true,
        ),
        body:Center(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.green,

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                onPressed: () {},
                child: Text("Simple Level",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(
                height: 40,

              ),
              RaisedButton(
                color: Colors.red,

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                onPressed: () {},
                child: Text("Heigh Level",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );

  }
}
