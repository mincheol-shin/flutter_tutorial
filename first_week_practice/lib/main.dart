import 'package:flutter/material.dart';



void main() => runApp(MyPage());

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'first practice',
     initialRoute: '/',
      routes: { '/':(context)=> FirstPage(),
        '/second':(context)=> SecondPage(),
      },
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/second');
    });

    return MaterialApp(
        home: Scaffold(
         body:Center(
          child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          new Text('splash screen',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
          ),),],
          ),
         ),
        ),
    );
  }
}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => new _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

    int number=0;
    void subtractNumbers() {
      setState(() => number = number - 1);
    }
    void addNumbers() {
      setState(() => number = number + 1);
    }

    @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: Scaffold(
           appBar: new AppBar(
             title: Center(child:
              new Text("Flutter Tutorial",
                 style: TextStyle(
                 color: Colors.black,
               ),
             )
             ),
             backgroundColor: Colors.white,
           ),

          body: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                '$number',
                style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 100.0,
                    fontFamily: 'roboto'
                ),
              ),//덧셈, 뺼셈 숫자 표시하는 text
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,//위젯 사이 거리 균둥
                children: <Widget>[
                  new RaisedButton(
                    onPressed: subtractNumbers,
                    textColor: Colors.white,
                    color: Colors.red,
                    padding: const EdgeInsets.all(8.0),
                    child: new Text("-",),
                  ),
                  new RaisedButton(
                    onPressed: addNumbers,
                    textColor: Colors.white,
                    color: Colors.blue,
                    padding: const EdgeInsets.all(8.0),
                    child: new Text("+",),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
    }
}
