import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Calculator()));

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  //계산기 로직
  double num1 = 0.0;
  double num2 = 0.0;
  double result = 0.0;

  void buttonPressed(List<dynamic> buttonTxt) {

    //1. 받은 숫자를 표시해야하는데 리스트로 받은 숫자를 바로 result로 보내는 법을 잘 모르겠습니다.
    //2. 리스트를 초기화 하는 법을 모르겠습니당 ㅜ

    //result에 버튼 누른 숫자를 받는 곳


    if (buttonTxt is String) {

      //리스트로 받은 숫자들을 자릿수에 맞게 합치는 법
      for (int a = 0; a < buttonTxt.length - 1; a++) {
        buttonTxt as num;
        num2 = num2 * 10 + buttonTxt[a];
      }

      // 각 연산기호에 맞게 구현해본 것.
      if (buttonTxt == "C") {
        num1 = 0.0;
        num2 = 0.0;
        result = 0;
      } else if (buttonTxt == "+" ||
          buttonTxt == "-" ||
          buttonTxt == "/" ||
          buttonTxt == "*") {
        switch (buttonTxt[buttonTxt.length - 1]) {
          case ("+"):
            num1 = num1 + num2;
            result=0;
            break;
          case ("-"):
            num1 = num1 - num2;
            result=0;
            break;
          case ("/"):
            num1 = num1 / num2;
            result=0;
            break;
          case ("*"):
            num1 = num1 * num2;
            result=0;
            break;
        }
        //리스트를 초기화 시킬 자리.

      } else if (buttonTxt == "=") {
        result=num1;
      }
    }
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
      body: Column(
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
              "$result",
              style: TextStyle(fontSize: 48.0),
            ),
          ),

          Flexible(
            flex: 1,
            child: Row(
              children: <Widget>[
                //숫자 연산 ui
                Flexible(
                  flex: 3,
                  child: Column(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            flatButton('7', Colors.white, Colors.black),
                            flatButton('8', Colors.white, Colors.black),
                            flatButton('9', Colors.white, Colors.black),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            flatButton('4', Colors.white, Colors.black),
                            flatButton('5', Colors.white, Colors.black),
                            flatButton('6', Colors.white, Colors.black),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            flatButton('1', Colors.white, Colors.black),
                            flatButton('2', Colors.white, Colors.black),
                            flatButton('3', Colors.white, Colors.black),
                          ],
                        ),
                      ),
                      flatButton('0', Colors.white, Colors.black),
                    ],
                  ),
                ),

                //사칙연산 ui
                Flexible(
                  flex: 1,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        flatButton('C', Colors.orange, Colors.white),
                        flatButton('/', Colors.orange, Colors.white),
                        flatButton('*', Colors.orange, Colors.white),
                        flatButton('-', Colors.orange, Colors.white),
                        flatButton('+', Colors.orange, Colors.white),
                        flatButton('=', Colors.orange, Colors.white),
                      ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Flexible flatButton(var buttonTxt, Color buttonColor, Color txtColor) {
    return Flexible(
      flex: 1,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: RaisedButton(
          color: buttonColor,
          onPressed: () {
            buttonPressed(buttonTxt);
          },
          child: Text(
            '$buttonTxt',
            style: TextStyle(
              fontSize: 35,
              color: txtColor,
            ),
          ),
        ),
      ),
    );
  }
}
