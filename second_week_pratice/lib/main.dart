import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Calculator()));

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  String input ='0';
  List <String> result;
  int num1=0;
  int num2=0;

  void buttonPressed(String buttonTxt) {

    setState((){

      if(input=='0'){
        input=buttonTxt;
      }

      else if(buttonTxt=='+'||buttonTxt=='-'){
        result.add(input);
        result.add(buttonTxt);

        if(result[result.length-1]=='+'||result[result.length-1]=='-'){
          result[result.length-1]=buttonTxt;
        }

        input='0';
      }
      else if(buttonTxt=='C'||buttonTxt=='='){

        result.add(input);

        if(buttonTxt=='C'){
          result.length=0;
          input='0';
        }

        if(buttonTxt=='='){
          for(int a=0; a<result.length;a++){
            if(a%2==0){
             num2 = int.parse(result[a]);
            }
            if(a%2==1){
              if(result[a]=='+'){
                num1+=num2;
              }
              if(result[a]=="-"){
                num1-=num2;
              }
            }
          }
          input= num1 as String;
        }
      }
      else{
        input+=buttonTxt;
      }

    });
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
              'HI',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          //입력 + 답 보여주는 텍스트
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(
              '$input',
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
