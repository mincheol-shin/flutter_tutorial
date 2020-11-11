import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future fetchPost() async {
  await Future.delayed(Duration(seconds: 2));
  final response = await http.get('https://jsonplaceholder.typicode.com/posts');
  return jsonDecode(response.body);
}

void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {'/': (context) => Page(), '/second': (context) => ListPage()}));

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Flutter Tutorial',
          style: TextStyle(color: Colors.black),
        ),
      ),
       body: FutureBuilder(
          future: fetchPost(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index){
                  return Container(
                    color: Colors.white,
                    height: 240.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20.0,20,20,0),
                                child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.grey,
                                  ),
                              ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 15.0,),
                                    Text(
                                      "userID: ${snapshot.data[index]['userId']}",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "\n ID: ${snapshot.data[index]['id']}",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                       color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text("${snapshot.data[index]['body']}",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                            ),
                          ),
                          SizedBox(height: 7.0,),
                          Padding(
                            padding:EdgeInsets.symmetric(horizontal:20.0),
                            child:Container(
                              height:1.0,
                              width:500.0,
                              color:Colors.grey,),),
                        ],
                      ),
                  );
                },
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
    );
  }
}

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
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/second');
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
