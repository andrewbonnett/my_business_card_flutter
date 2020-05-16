import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}
//Notes
//containers can only have ONE child
//MARGIN is for the OUTSIDE of your container
//(in this example moves the container off of the top/side of the SafeArea
//PADDING is for the INSIDE of the container
//(in this example the text is moved closer to the center of the container)
//EdgeInsets.all(double) or EdgeInsets.only(left: double) or EdgeInsets.LTRB(double, double, double, double)

//Column properties
//verticalDirection: VerticalDirection.up
//mainAxisAlignment: MainAxisAlignment.start (default) vs end/center/spaceEvenly/spaceBetween

//move containers along horizontal axis:
//create an "invisible" container with "width: double.infinity" (and zero height).
//use crossAxisAlignment: end/center

//stretch containers to width of parent Column:
//crossAxisAlignment: stretch

//SizedBox (height: x) to space

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/IMG_1502.png'),
              ),
              Text(
                'Andrew Bonnett',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'PermanentMarker',
                ),
              ),
              Text(
                'STUDENT',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.lightBlue[100],
                  fontFamily: 'SourceSansPro',
                  letterSpacing: 8.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 120.0,
                child: Divider(
                  color: Colors.lightBlue[100],
                ),
              ),
              Card(
                //by default Cards are white color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 30.0,
                    color: Colors.lightBlue[700],
                  ),
                  title: Text(
                    '+1 314 938 1380',
                    style: TextStyle(
                      color: Colors.lightBlue[700],
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                    ),
                  ),
                  subtitle: Text(
                    'mobile',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontFamily: 'SourceSansPro',
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  subtitle: Text(
                    'email',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontFamily: 'SourceSansPro',
                    ),
                  ),
//                  trailing: Icon(
//                    Icons.more_vert,
//                    color: Colors.teal[700],
//                  ),
                  leading: Icon(
                    Icons.mail,
                    size: 30.0,
                    color: Colors.lightBlue[700],
                  ),
                  title: Text(
                    'andrewbonnett@gmail.com',
                    style: TextStyle(
                      color: Colors.lightBlue[700],
                      fontFamily: 'SourceSansPro',
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 120.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
