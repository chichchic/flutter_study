import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('SCREEN 1'),
        ),
        body: Center(
            child: RaisedButton(
          color: Colors.red,
          child: Text('go back to Screen2'),
          onPressed: () {
            Navigator.pop(context);
          },
        )));
  }
}
