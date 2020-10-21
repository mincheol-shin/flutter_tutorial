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


              //버튼 ui
              Row(children: <Widget> [


                Flexible(
                  flex: 3,

                ),


                Flexible(
                  flex: 1,
                 child: Column(
                   children: <Widget>[
                     Flexible(flex: 1, child: CustomButton("C")),
                     Flexible(flex: 1, child: CustomButton("/")),
                     Flexible(flex: 1, child: CustomButton("*")),
                     Flexible(flex: 1, child: CustomButton("-")),
                     Flexible(flex: 1, child: CustomButton("+")),
                     Flexible(flex: 1, child: CustomButton("=")),
                   ],
                 ),
                ),

              ],),

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
      margin:  EdgeInsets.all(6.0),
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.orange),

      child: new Text(
        text,
        style: new TextStyle(color: Colors.white, fontSize: 26.0),
      ),
    );
  }
}



