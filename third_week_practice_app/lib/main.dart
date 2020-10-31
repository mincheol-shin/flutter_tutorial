import 'package:flutter/material.dart';

void main() => runApp(BookScroll());

class BookScroll extends StatefulWidget {
  @override
  _BookScrollState createState() => _BookScrollState();
}

class _BookScrollState extends State<BookScroll> {
  /// TODO
  final List<Map<String, dynamic>> book_list = [
    {
      'name': '꾸뻬 씨의 행복 여행',
      'retrunday': '2020/1/30',
      'borrowday': '2020/1/22',
      'writer': '프랑수아 를로르',
      'image': 'assets/happy.jpeg'
    },
    {
      'name': '모든 순간이 너였다',
      'retrunday': '2020/6/24',
      'borrowday': '2020/6/17',
      'writer': '하태완',
      'image': 'assets/always.jpeg'
    },
    {
      'name': '꾸뻬 씨의 행복 여행',
      'retrunday': '2020/1/30',
      'borrowday': '2020/1/22',
      'writer': '프랑수아 를로르',
      'image': 'assets/happy.jpeg'
    },
    {
      'name': '모든 순간이 너였다',
      'retrunday': '2020/6/24',
      'borrowday': '2020/6/17',
      'writer': '하태완',
      'image': 'assets/always.jpeg'
    },
    {
      'name': '꾸뻬 씨의 행복 여행',
      'retrunday': '2020/1/30',
      'borrowday': '2020/1/22',
      'writer': '프랑수아 를로르',
      'image': 'assets/happy.jpeg'
    },
    {
      'name': '모든 순간이 너였다',
      'retrunday': '2020/6/24',
      'borrowday': '2020/6/17',
      'writer': '하태완',
      'image': 'assets/always.jpeg'
    },
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
            title: Text(
              'Flutter Tutorial',
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: ListView.builder(
            itemCount: book_list.length,
            itemBuilder: (context, index) {
              return Container(
                height: 150.0,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                '${book_list[index]["image"]}',
                                height: 120,
                                width: 120,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Flexible(
                      flex: 7,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "\n${book_list[index]["name"]}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "${book_list[index]["writer"]}",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 60.0),
                            Text(
                              "대출일 : ${book_list[index]["borrowday"]} ~ 반납일 : ${book_list[index]["retrunday"]}",
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.grey,
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
