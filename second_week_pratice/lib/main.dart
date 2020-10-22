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

   FlatButton(String button_txt, Color button_color, Color txt_color) {
    return Expanded(
      child: RaisedButton(
        onPressed: () {},
        child: Text(
          '$button_txt',
          style: TextStyle(
            fontSize: 35,
            color: txt_color,
          ),
        ),
        color: button_color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //Calculator
    return Scaffold(
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
        margin:EdgeInsets.all(0.0),
        child: Column(
          children: <Widget>[
            //계산 과정 보여주는 텍스트
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Text(
                "0",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            //입력 + 답 보여주는 텍스트
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Text(
                "0",
                style: TextStyle(fontSize: 48.0),
              ),
            ),

            Expanded(
              child: Row(
                children: <Widget>[
                  //숫자 연산 ui
                  Flexible(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FlatButton('7', Colors.white, Colors.black),
                              FlatButton('8', Colors.white, Colors.black),
                              FlatButton('9', Colors.white, Colors.black),
                            ],
                          ),
                        ),

                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FlatButton('4', Colors.white, Colors.black),
                              FlatButton('5', Colors.white, Colors.black),
                              FlatButton('6', Colors.white, Colors.black),
                            ],
                          ),
                        ),

                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FlatButton('1', Colors.white, Colors.black),
                              FlatButton('2', Colors.white, Colors.black),
                              FlatButton('3', Colors.white, Colors.black),
                            ],
                          ),
                        ),
                        Expanded(
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
