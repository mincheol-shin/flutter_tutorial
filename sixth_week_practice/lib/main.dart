import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Counter>(
      create: (_) => Counter(0),
      child: MaterialApp(
        initialRoute: "/",
        routes: {
          "/": (context) => FirstPage(),
          "/second": (context) => SecondPage()
        },
      ),
    );
  }
}

class Counter with ChangeNotifier{
  int _count;

  Counter(this._count);

  getCounter() => _count;
  setCounter(int counter) => _count = counter;

  void subtractNumbers() {
    _count--;
    notifyListeners();
  }

  void addNumbers() {
    _count++;
    notifyListeners();
  }
}


class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override


  Widget build(BuildContext context) {

    final counter = Provider.of<Counter>(context);

    return Scaffold(
      appBar: new AppBar(
        elevation: 0,
        title: Center(
            child: new Text(
          "Flutter Tutorial",
          style: TextStyle(
            color: Colors.black,
          ),
        )),
        backgroundColor: Colors.white,
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            '${counter.getCounter()}',
            style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 60.0,
                fontFamily: 'roboto'),
          ), //덧셈, 뺼셈 숫자 표시하는 text
          SizedBox(
            height: 60,
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new RaisedButton(
                onPressed: counter.subtractNumbers,
                textColor: Colors.white,
                color: Colors.red,
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  "-",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                width: 24,
              ),
              new RaisedButton(
                onPressed: counter.addNumbers,
                textColor: Colors.white,
                color: Colors.blue,
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  "+",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
            height: 40,
            width: 200,
            child: RaisedButton(
              color: Colors.amber,
              textColor: Colors.white,
              child: Text("페이지 이동"),
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/second");
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0.0,leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.grey,),onPressed: (){
        Navigator.pushReplacementNamed(context, "/");
      },)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Num: ${counter.getCounter()}",
              style: TextStyle(color: Colors.grey, fontSize: 70),
            ),
          ],
        ),
      ),
    );
  }
}
