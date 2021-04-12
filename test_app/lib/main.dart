import 'package:flutter/material.dart';
import 'package:test_app/first.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'test',
      initialRoute: '/',
      routes: {
        '/' : (context)=> FirstPage(),
      },
      theme: ThemeData(
        fontFamily: 'Rajdhani',
      ),
    );
  }
}

