import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_route/screens/screen1.dart';

class Screen2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('SCREEN 2'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.blue,
              child: Text('go to Screen1'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Screen1();
                }));
              },
            ),
            RaisedButton(
              color: Colors.black,
              child: Text('go back to Screen0',
                  style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        )));
  }
}
