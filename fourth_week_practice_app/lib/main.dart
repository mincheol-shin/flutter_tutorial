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
      backgroundColor: Colors.white,
      body: Container(
        child: PageView(
          children: <Widget>[
            SizedBox.expand(
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Introduction Screen",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        " 1 번째 스크린",
                        style: TextStyle(
                            fontSize: 15.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox.expand(
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Introduction Screen",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        " 2 번째 스크린",
                        style: TextStyle(
                            fontSize: 15.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox.expand(
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Introduction Screen",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        " 3 번째 스크린",
                        style: TextStyle(
                            fontSize: 15.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox.expand(
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Introduction Screen",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        " 4 번째 스크린",
                        style: TextStyle(
                            fontSize: 15.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}
