import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fifth practice',
      initialRoute: '/',
      routes: { '/':(context)=> FirstPage(),
      },
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override

  final TextEditingController _myController = TextEditingController();

  String id ='';
  String password ='';
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 90.0,),
              Text("로그인",style: TextStyle(fontSize: 28.0,color: Colors.black, fontWeight: FontWeight.bold),),
              SizedBox(height: 10.0,),
              Text("로그인하신 후 모든 서비스를 이용하실 수 있습니다",style: TextStyle(fontSize: 12.0,color: Colors.grey),),
              SizedBox(height: 30.0,),
              TextFormField(
                controller: _myController,
                decoration: InputDecoration(
                  labelText: "아이디 입력",
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color:Colors.amber,),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color:Colors.amber,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: _myController,
                decoration: InputDecoration(
                  labelText: "비밀번호 입력",
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color:Colors.amber,),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color:Colors.amber,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                width: MediaQuery.of(context).copyWith().size.height,
                height: 60,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1.0),
                      side: BorderSide(color: Colors.grey)),
                  textColor: Colors.grey,
                    color: Colors.white,
                    child: Text('로그인'),
                    onPressed: (){
                    },
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

