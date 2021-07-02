import 'package:flutter/material.dart';
import 'package:secconed_sessional_tic_tac/Contect_us.dart';
import 'package:secconed_sessional_tic_tac/level.dart';
import 'dart:io';
import 'package:secconed_sessional_tic_tac/hard_level.dart';


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
            title: Text(
              "Crud App ",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => gamelavel()),
                    );
                  },
                  child: Text(
                    "Simple Level",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                RaisedButton(
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => hardlevel()));
                  },
                  child: Text(
                    "Heigh Level",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                RaisedButton(
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => contectus()),
                    );
                  },
                  child: Text(
                    "Contect Us",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 40,
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
                ),
              ],
            ),
          ),
          drawer: Drawer(
              child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("../images/fg.png"),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: ListView(
                  children: [
                    ListTile(
                        leading: Icon(Icons.contacts_outlined),
                        title: Text("Contect US"),
                        onTap: () => contectus()),
                    Divider(
                      height: 1,
                      thickness: 1,
                    ),
                    ListTile(
                        leading: Icon(Icons.exit_to_app_rounded),
                        title: Text("Exit"),
                        onTap: () => exit(0)),
                  ],
                ),
              ),
            ],
          )),
        ));
  }
}
