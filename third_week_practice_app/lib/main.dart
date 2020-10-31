import 'package:flutter/material.dart';

void main()=> runApp(BookScroll());

class BookScroll extends StatefulWidget {
  @override
  _BookScrollState createState() => _BookScrollState();
}

class _BookScrollState extends State<BookScroll> {

  final List<Map<String, dynamic>> book_list=[
      {'name': '꾸뻬 씨의 행복 여행', 'retrunday': '2020/1/30', 'borrowday': '2020/1/22', 'writer': '프랑수아 를로르'},

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'BlackHanSans',
      ),
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
              return Container(
                height: 150.0,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                      flex:3,

                  ),
                      Flexible(
                        flex:7,
                        child: Padding(
                          padding: const EdgeInsets.only(left:10.0,),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${book_list[index]["name"]}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                  color: Colors.black,
                                  fontFamily: 'BlackHanSans',
                                ),
                              ),
                              Text(
                                "${book_list[index]["writer"]}",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey,
                                  fontFamily: 'BlackHanSans',
                                ),
                              ),
                              const SizedBox(height: 80.0),
                              Text(
                                "대출일 : ${book_list[index]["borrowday"]} ~ 반납일 : ${book_list[index]["retrunday"]}",
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.grey,
                                  fontFamily: 'BlackHanSans',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
              );
            },
          )),
    );
  }
}
