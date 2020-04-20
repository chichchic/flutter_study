import 'package:flutter/material.dart';

void main() => runApp(ImageShow());

class ImageShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: <Widget>[
                    JaramCard(
                        jaramstr: 'Jaram1', imagePath: 'images/example.png'),
                    JaramCard(
                        jaramstr: 'Jaram2', imagePath: 'images/example.png'),
                    SizedBox(height: 16.0)
                  ],
                ),
              ),
            )),
      ),
    );
  }
}

class JaramCard extends StatelessWidget {
  JaramCard({this.jaramstr, this.imagePath});
  String jaramstr;
  String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(10.0)),
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Column(
        children: <Widget>[
          Image.asset(
            this.imagePath,
            height: 500,
          ),
          Text(
            this.jaramstr,
            style: TextStyle(
                color: Colors.white,
                fontSize: 35.0,
                fontFamily: 'BlackHansSans'),
          )
        ],
      ),
    );
  }
}
