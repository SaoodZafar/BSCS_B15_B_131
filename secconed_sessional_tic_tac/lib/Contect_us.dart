import 'package:flutter/material.dart';
import 'package:contactus/contactus.dart';
class contectus extends StatefulWidget {
  @override
  _contectusState createState() => _contectusState();
}

class _contectusState extends State<contectus> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
      appBar: AppBar(
        title: Text("Contect Us"),
        centerTitle: true,
      ),
        backgroundColor: Colors.amberAccent,
        body: ContactUs(
          logo:AssetImage("images/sa.jpeg") ,
          email: "saoodzafar5@gail.com",
          companyName: "BITS",
          phoneNumber: "03077787942",
          website: "https://bitsolutions.pk/",
          githubUserName: "https://github.com/SaoodZafar",
          tagLine: "Fluter Developer",
          twitterHandle: "saood7988",
          instagram: "saoodZafar",




        ),
      ),


    );
  }
}
