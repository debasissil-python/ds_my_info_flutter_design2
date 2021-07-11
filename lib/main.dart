//http://www.androidcoding.in/2020/07/20/flutter-url-launcher/
//https://www.codegrepper.com/code-examples/dart/make+icon+clickable+flutter

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
//import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

// _callNumber() async {
//   const number = '9830711580'; //set the number here
//   bool res;
//   await FlutterPhoneDirectCaller.callNumber(number);
// }

// _launchURL() async {
//   const url = 'https://fundprotectors.com';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: SafeArea(
          //minimum: EdgeInsets.fromLTRB(110.0, 110.0, 110.0, 100.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //minimum: EdgeInsets.all(130.0),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.lightBlueAccent,
                    radius: 70.0,
                    foregroundImage: AssetImage('images/Soumita1.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Text(
                    'Soumita Sil',
                    style: TextStyle(
                        fontFamily: 'Pacifico',
                        color: Colors.white70,
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 2,
                        height: 2,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 5, 35),
                  child: Text(
                    'School Teacher',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      color: Colors.white70,
                      fontSize: 26,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                SizedBox(
                  width: 80,
                  height: 2,
                  child: Divider(
                    color: Colors.white38,
                    thickness: 3,
                  ),
                ),

                Card(
                  elevation: 0,
                  //margin: EdgeInsets.fromLTRB(40, 10, 320, 10),
                  color: Colors.blueGrey[900],
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 35, 0, 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: Icon(Icons.call),
                            color: Colors.white70,
                            highlightColor: Colors.lime,
                            iconSize: 50,
                            onPressed: () => launch("tel://09830711580"),
                          ),
                          IconButton(
                            icon: Icon(Icons.email),
                            color: Colors.white70,
                            highlightColor: Colors.lime,
                            iconSize: 50,
                            onPressed: () => launch(
                                "mailto:soumitasil@yahoo.co.in?subject=Hi..&body=Can You Please...%20"),
                          ),
                          IconButton(
                            icon: Icon(Icons.public),
                            color: Colors.white70,
                            highlightColor: Colors.lime,
                            iconSize: 50,
                            onPressed: () =>
                                launch("https://linkedin.com/in/soumitasil"),
                          ),
                        ],
                      )),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'fuelled by:',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                            fontFamily: 'Pacifico',
                            fontStyle: FontStyle.italic),
                      ),
                      Text(
                        'Hobby Networking',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 20,
                            fontFamily: 'Pacifico',
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
