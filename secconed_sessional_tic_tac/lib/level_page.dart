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
            style: TextStyle(
              color: Colors.white,
            fontWeight: FontWeight.bold,

          ),

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
        ),
        drawer: Drawer(
          child:Column(
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
         ),

         ListTile(
           leading: Icon(Icons.exit_to_app_rounded),
           title: Text("Exit"),
         ),
       ],
     ),
    ),



          ],

          )




      ),

    ));

  }
}
