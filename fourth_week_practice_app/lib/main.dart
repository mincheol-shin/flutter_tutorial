import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(home: Page()));

class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          children: <Widget>[
            SizedBox.expand(
              child: Container(
                color: Colors.white,
                child: Center(
                  child: Text(" Introduction Screen",
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
