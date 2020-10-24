import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double num1 = 0.0;
  double num2 = 0.0;
  String output = "0";
  String sign = "";

  ButtonPressed(var button_txt) {
    if (button_txt == "C") {
      double num1 = 0.0;
      double num2 = 0.0;
      String output = "0";
      String sign = "";
    } else if (button_txt == "+" ||
        button_txt == "-" ||
        button_txt == "/" ||
        button_txt == "*") {}
  }

  FlatButton(String button_txt, Color button_color, Color txt_color) {
    return Expanded(
      child: RaisedButton(
        onPressed: () {
          ButtonPressed(button_txt);
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Text(
              '$button_txt',
              style: TextStyle(
                fontSize: 35,
                color: txt_color,
              ),
            ),
          ),
        ),
        color: button_color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //Calculator
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          'Flutter Tutorial',
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            //계산 과정 보여주는 텍스트
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Text(
                "0",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            //입력 + 답 보여주는 텍스트
            Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Text(
                "0",
                style: TextStyle(fontSize: 48.0),
              ),
            ),

            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  //숫자 연산 ui
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FlatButton('7', Colors.white, Colors.black),
                              FlatButton('8', Colors.white, Colors.black),
                              FlatButton('9', Colors.white, Colors.black),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FlatButton('4', Colors.white, Colors.black),
                              FlatButton('5', Colors.white, Colors.black),
                              FlatButton('6', Colors.white, Colors.black),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FlatButton('1', Colors.white, Colors.black),
                              FlatButton('2', Colors.white, Colors.black),
                              FlatButton('3', Colors.white, Colors.black),
                            ],
                          ),
                        ),
                        Flexible(
                          child: FlatButton('0', Colors.white, Colors.black),
                        ),
                      ],
                    ),
                  ),

                  //사칙연산 ui
                  Flexible(
                    flex: 1,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton('C', Colors.orange, Colors.white),
                          FlatButton('/', Colors.orange, Colors.white),
                          FlatButton('*', Colors.orange, Colors.white),
                          FlatButton('-', Colors.orange, Colors.white),
                          FlatButton('+', Colors.orange, Colors.white),
                          FlatButton('=', Colors.orange, Colors.white),
                        ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
