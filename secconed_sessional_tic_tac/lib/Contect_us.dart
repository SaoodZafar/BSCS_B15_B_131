import 'package:flutter/material.dart';
import 'package:contactus/contactus.dart';
import 'package:flutter_launcher_icons/android.dart';
import 'package:flutter_launcher_icons/constants.dart';
import 'package:flutter_launcher_icons/custom_exceptions.dart';
import 'package:flutter_launcher_icons/ios.dart';
import 'package:flutter_launcher_icons/main.dart';
import 'package:flutter_launcher_icons/utils.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
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
