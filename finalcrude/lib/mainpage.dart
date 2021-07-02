import 'dart:io';

import 'package:finalcrude/nextpage.dart';


import 'package:flutter/material.dart';




class nextpage extends StatefulWidget {
  const nextpage({Key? key}) : super(key: key);

  @override
  _nextpageState createState() => _nextpageState();
}

class _nextpageState extends State<nextpage> {
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
                      MaterialPageRoute(builder: (context) => nextpages()),
                    );
                  },
                  child: Text(
                    "Next Page",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 40,
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
                                fit: BoxFit.cover)), child: null,
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
                            onTap: () => nextpages()),
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
