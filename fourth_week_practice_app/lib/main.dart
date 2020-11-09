import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


class Post {
  final int userid;
  final int id;
  final String title;
  final String body;

  Post({this.userid, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        userid: json['userId'],
        id: json['id'],
        title: json['title'],
        body: json['body']);
  }
}

Future<Post> fetchPost()async{
  final response = await http.get('https://jsonplaceholder.typicode.com/posts');


}

void main() => runApp(MaterialApp(home: Page()));


class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {


  @override
  int index;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: PageView(
          children: <Widget>[
            for(index=1; index<4; index++)(
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
                          "$index 번째 스크린",
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ],
                    ),
                  ),
                ),
              )
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
                        style: TextStyle(fontSize: 15.0),
                      ),
                      const SizedBox(height: 40.0),
                      RaisedButton(
                        onPressed: fetchPost,
                        textColor: Colors.white, child: (Text("DONE",)),
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
