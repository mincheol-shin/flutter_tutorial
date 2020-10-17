import 'package:flutter/material.dart';



void main() => runApp(My_page());

class My_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'first practice',
     initialRoute: '/',
      routes: { '/':(context)=> First_page(),
        '/second':(context)=> Second_page(),
      },
    );
  }
}

class First_page extends StatefulWidget {
  @override
  _First_pageState createState() => _First_pageState();
}

class _First_pageState extends State<First_page> {
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

class Second_page extends StatefulWidget {
  @override
  _Second_pageState createState() => new _Second_pageState();
}

class _Second_pageState extends State<Second_page> {

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
