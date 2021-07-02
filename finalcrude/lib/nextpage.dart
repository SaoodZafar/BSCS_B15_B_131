import 'package:flutter/material.dart';
class nextpages extends StatefulWidget {
  const nextpages({Key? key}) : super(key: key);

  @override
  _nextpagesState createState() => _nextpagesState();
}

class _nextpagesState extends State<nextpages> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        body: Column(
          children: [
            Container(
                margin: EdgeInsets.all(20),
                child: TextField(

                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                  onChanged: (text) {
                    setState(() {

                      //you can access nameController in its scope to get
                      // the value of text entered as shown below
                      //fullName = nameController.text;
                    });
                  },
                )),
            Container(
                margin: EdgeInsets.all(20),
                child: TextField(

                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                  onChanged: (text) {
                    setState(() {

                      //you can access nameController in its scope to get
                      // the value of text entered as shown below
                      //fullName = nameController.text;
                    });
                  },
                )),
            Container(
                margin: EdgeInsets.all(20),
                child: TextField(

                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone',
                  ),
                  onChanged: (text) {
                    setState(() {

                      //you can access nameController in its scope to get
                      // the value of text entered as shown below
                      //fullName = nameController.text;
                    });
                  },
                )),
            Container(
                margin: EdgeInsets.all(20),
                child: TextField(

                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Address',
                  ),
                  onChanged: (text) {
                    setState(() {

                      //you can access nameController in its scope to get
                      // the value of text entered as shown below
                      //fullName = nameController.text;
                    });
                  },
                )),
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
                "Add To DataBase",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
