import 'package:flutter/material.dart';

void main()=> runApp(Calculator());

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: CalculatorView(),
    );
  }
}

class CalculatorView extends StatefulWidget {
  @override
  _CalculatorViewState createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0.0,
        title: Center(child: Text('Flutter Tutorial', style: TextStyle(color: Colors.black),)),),

      body: Container(
        child: Column(
          children: <Widget>[
            //계산 과정 보여주는 텍스트
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Text("0", style: TextStyle(fontSize: 20.0),),
            ),

            //입력 + 답 보여주는 텍스트
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Text("0", style: TextStyle(fontSize: 48.0),),
            ),

            Row(
            children: <Widget>[
              Flexible(
                flex: 3,
                child: Column(
                children: <Widget>[

                  Flexible(
                    flex: 1,
                    child:  Row(
                    children: <Widget>[
                      Flexible(flex: 1, child: CustomButton('7'),),
                      Flexible(flex: 1, child: CustomButton('8'),),
                      Flexible(flex: 1, child: CustomButton('9'),),
                    ],
                  ),
                  ),
                  Flexible(
                    flex: 1,
                    child:  Row(
                      children: <Widget>[
                        Flexible(flex: 1, child: CustomButton('4'),),
                        Flexible(flex: 1, child: CustomButton('5'),),
                        Flexible(flex: 1, child: CustomButton('6'),),
                    ],
                  ),
                ),

                  Flexible(
                    flex: 1,
                    child:  Row(
                      children: <Widget>[
                        Flexible(flex: 1, child: CustomButton('1'),),
                        Flexible(flex: 1, child: CustomButton('2'),),
                        Flexible(flex: 1, child: CustomButton('3'),),
                      ],
                    ),
                  ),
                  
                  Flexible(flex: 1, child: CustomButton('0'),),
                ],
                ),
              ),


              Flexible(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Flexible(flex: 1, child: MathButton('C'),),
                    Flexible(flex: 1, child: MathButton('/'),),
                    Flexible(flex: 1, child: MathButton('*'),),
                    Flexible(flex: 1, child: MathButton('-'),),
                    Flexible(flex: 1, child: MathButton('+'),),
                    Flexible(flex: 1, child: MathButton('='),),

                  ],
                ),
              ),
            ],
            ),
          ],
        ),
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
  String text;

  CustomButton(this.text);

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child:  Center(
        child: Text(
          text,
          style:  TextStyle(color: Colors.black, fontSize: 10.0),
        ),
      ),
    );
  }
}

class MathButton extends StatelessWidget {
  String text;

  MathButton(this.text);

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child:  Center(
        child: Text(
          text,
          style:  TextStyle(color: Colors.black, fontSize: 10.0),
        ),
      ),
    );
  }
}


