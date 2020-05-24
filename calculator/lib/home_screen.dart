import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final textControllerInput = TextEditingController();
  final textControllerResult = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Container(
                color: Colors.white,
                height: 80,
                child: TextFormField(
                  showCursor: true,
                  readOnly: true,
                  decoration: new InputDecoration.collapsed(
                    hintText: "Input number to calculate",
                    fillColor: Colors.deepPurpleAccent,
                    filled: true,
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.right,
                  controller: textControllerInput,
                  onTap: () {
                    print(open);
                  },
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.lightBlue,
                child: TextFormField(
                  showCursor: false,
                  readOnly: true,
                  decoration: new InputDecoration.collapsed(
                    hintText: "Result",
                    fillColor: Colors.deepPurpleAccent,
                    filled: true,
                    hintStyle: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    color: Colors.deepPurpleAccent,
                  ),
                  controller: textControllerResult,
                  textAlign: TextAlign.right,
                  onTap: () {
                    print("selected_lightBlue");
                  },
                ),
              ),
            ),
            Container(
              color: Colors.white,
              height: 420,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        ButtonNumber(
                          textControllerInput: textControllerInput,
                          btnNum: "C",
                          onPressed: () =>
                              setState(() => {textControllerInput.text = ""}),
                        ),
                        ButtonNumber(
                          textControllerInput: textControllerInput,
                          btnNum: "(  )",
                          onPressed: () => setState(() => {
                                {
                                  textControllerInput.text =
                                      textControllerInput.text + "("
                                }
                              }),
                        ),
                        ButtonNumber(
                          textControllerInput: textControllerInput,
                          btnNum: "%",
                          onPressed: () => setState(() => {
                                textControllerInput.text =
                                    textControllerInput.text + "%"
                              }),
                        ),
                        ButtonNumber(
                          textControllerInput: textControllerInput,
                          btnNum: "/",
                          onPressed: () => setState(() => {
                                textControllerInput.text =
                                    textControllerInput.text + "/"
                              }),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        ButtonNumber(
                          textControllerInput: textControllerInput,
                          btnNum: "7",
                          onPressed: () => setState(() => {
                                textControllerInput.text =
                                    textControllerInput.text + "7"
                              }),
                        ),
                        ButtonNumber(
                          textControllerInput: textControllerInput,
                          btnNum: "8",
                          onPressed: () => setState(() => {
                                textControllerInput.text =
                                    textControllerInput.text + "8"
                              }),
                        ),
                        ButtonNumber(
                          textControllerInput: textControllerInput,
                          btnNum: "9",
                          onPressed: () => setState(() => {
                                textControllerInput.text =
                                    textControllerInput.text + "9"
                              }),
                        ),
                        ButtonNumber(
                          textControllerInput: textControllerInput,
                          btnNum: "*",
                          onPressed: () => setState(() => {
                                textControllerInput.text =
                                    textControllerInput.text + "*"
                              }),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        ButtonNumber(
                          textControllerInput: textControllerInput,
                          btnNum: "4",
                          onPressed: () => setState(() => {
                                textControllerInput.text =
                                    textControllerInput.text + "4"
                              }),
                        ),
                        ButtonNumber(
                          textControllerInput: textControllerInput,
                          btnNum: "5",
                          onPressed: () => setState(() => {
                                textControllerInput.text =
                                    textControllerInput.text + "5"
                              }),
                        ),
                        ButtonNumber(
                          textControllerInput: textControllerInput,
                          btnNum: "6",
                          onPressed: () => setState(() => {
                                textControllerInput.text =
                                    textControllerInput.text + "6"
                              }),
                        ),
                        ButtonNumber(
                          textControllerInput: textControllerInput,
                          btnNum: "-",
                          onPressed: () => setState(() => {
                                textControllerInput.text =
                                    textControllerInput.text + "-"
                              }),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        ButtonNumber(
                          textControllerInput: textControllerInput,
                          btnNum: "1",
                          onPressed: () => setState(() => {
                                textControllerInput.text =
                                    textControllerInput.text + "1"
                              }),
                        ),
                        ButtonNumber(
                          textControllerInput: textControllerInput,
                          btnNum: "2",
                          onPressed: () => setState(() => {
                                textControllerInput.text =
                                    textControllerInput.text + "2"
                              }),
                        ),
                        ButtonNumber(
                          textControllerInput: textControllerInput,
                          btnNum: "3",
                          onPressed: () => setState(() => {
                                textControllerInput.text =
                                    textControllerInput.text + "3"
                              }),
                        ),
                        ButtonNumber(
                          textControllerInput: textControllerInput,
                          btnNum: "+",
                          onPressed: () => setState(() => {
                                textControllerInput.text =
                                    textControllerInput.text + "+"
                              }),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class ButtonRow extends StatelessWidget {
//   const ButtonRow({
//     @required this.textControllerInput,
//     this.btnNums,
//     this.onPresseds,
//   });
//   final TextEditingController textControllerInput;
//   final List<String> btnNums;
//   final List<void> onPresseds;
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: <Widget>[
//         ButtonNumber(
//           textControllerInput: textControllerInput,
//           btnNum: btnNums[0],
//           onPressed: () => setState(a(btnNums[0], textControllerInput)),
//         ),
//         ButtonNumber(
//           textControllerInput: textControllerInput,
//           btnNum: btnNums[1],
//           onPressed: () => setState(() => {
//                 textControllerInput.text = textControllerInput.text + btnNUms[1]
//               }),
//         ),
//         ButtonNumber(
//           textControllerInput: textControllerInput,
//           btnNum: btnNums[2],
//           onPressed: () => setState(() => {
//                 textControllerInput.text = textControllerInput.text + btnNums[2]
//               }),
//         ),
//         ButtonNumber(
//           textControllerInput: textControllerInput,
//           btnNum: btnNums[3],
//           onPressed: () => setState(() => {
//                 textControllerInput.text = textControllerInput.text + btnNums[3]
//               }),
//         )
//       ],
//     );
//   }
// }

class ButtonNumber extends StatelessWidget {
  const ButtonNumber({
    @required this.textControllerInput,
    this.btnNum,
    this.onPressed,
  });
  final TextEditingController textControllerInput;
  final String btnNum;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: FlatButton(
          child: Text(
            btnNum,
            style: TextStyle(
              fontSize: 35,
              color: Colors.blueGrey,
            ),
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
