import 'package:flutter/material.dart';

void main()=> runApp(BookScroll());

class BookScroll extends StatefulWidget {
  @override
  _BookScrollState createState() => _BookScrollState();
}

class _BookScrollState extends State<BookScroll> {

  final List<Map<String, dynamic>> book_list=[
    {
      'booknum1': {'name': '이삭', 'retrunday': '', 'borrowday': '', 'writer': ''},
      'booknum2': {'name': '개구리', 'retrunday': '', 'borrowday': '', 'writer': ''},
      'booknum3': {'name': '강아지', 'retrunday': '', 'borrowday': '', 'writer': ''},
      'booknum4': {'name': '고양이', 'retrunday': '', 'borrowday': '', 'writer': ''}
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0.0,
            centerTitle: true,
            backgroundColor: Colors.white,
            title: Center(
                child: Text(
              'Flutter Tutorial',
              style: TextStyle(color: Colors.black),
            )),
          ),
          body: ListView.builder(
            itemCount: book_list.length,
            itemBuilder: (context, index) {
              return ListTile(

              );
            },
          )),
    );
  }
}
