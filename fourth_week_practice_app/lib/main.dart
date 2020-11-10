import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future fetchPost() async {
  await Future.delayed(Duration(seconds: 2));
  final response = await http.get('https://jsonplaceholder.typicode.com/posts');
  return jsonDecode(response.body);
}

void main() => runApp(MaterialApp(home: Page()));

class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  int index;
  var user;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: PageView(
          children: <Widget>[
            for (index = 1; index < 4; index++)
              (SizedBox.expand(
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
                          "$index 번째 스크린",
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
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
                        style: TextStyle(fontSize: 15.0),
                      ),
                      const SizedBox(height: 40.0),
                      RaisedButton(
                        onPressed: () async {
                          user = await fetchPost();
                          print(user.length);
                          FutureBuilder(
                            future: fetchPost(),
                            builder:
                                (BuildContext context, AsyncSnapshot snapshot) {
                              if (snapshot.hasData) {

                                return Scaffold(
                                  backgroundColor: Colors.white,
                                  appBar: AppBar(
                                    elevation: 0.0,
                                    centerTitle: true,
                                    backgroundColor: Colors.white,
                                    title: Text(
                                      'Flutter Tutorial',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  body: ListView.builder(
                                    itemCount: user.length,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        height: 150.0,
                                        child: Column(
                                          children: <Widget>[
                                            Text("${user[index]["userId"]}"),
                                            Text("${user[index]["id"]}"),
                                            Text("${user[index]["title"]}"),
                                            Text("${user[index]["body"]}"),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                );
                              } else {
                                return CircularProgressIndicator();
                              }
                            },
                          );

                        },
                        textColor: Colors.white,
                        child: (Text(
                          "DONE",
                        )),
                        color: Colors.blue,
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
