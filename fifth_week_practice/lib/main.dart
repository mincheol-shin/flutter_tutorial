import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


void main() => runApp(MyApp());

final TextEditingController _idController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
final TextEditingController _pswdcheckController = TextEditingController();

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fifth practice',
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPage(),
        '/second':(context) => SecondPage(),
        '/third':(context) => ThirdPage(),
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


  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Form(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 90.0,
                ),
                Text(
                  "로그인",
                  style: TextStyle(
                      fontSize: 28.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "로그인하신 후 모든 서비스를 이용하실 수 있습니다",
                  style: TextStyle(fontSize: 12.0, color: Colors.grey),
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                  controller: _idController,
                  decoration: InputDecoration(
                    labelText: "아이디 입력",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.amber,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.amber,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: "비밀번호 입력",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.amber,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.amber,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
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
                    onPressed: () {
                    },
                  ),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 80,
                    ),
                    FlatButton(
                      child:  Text(
                        "회원가입",
                        style: TextStyle(fontSize: 12.0, color: Colors.grey),
                      ),
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, "/second");
                      },
                    ),
                    Text(
                      "|       비밀번호 찾기",
                      style: TextStyle(fontSize: 12.0, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 90.0,
                ),
                Text(
                  "아이디로 회원가입",
                  style: TextStyle(
                      fontSize: 28.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "로그인은 최고 5자 이상으로 입력해주세요",
                  style: TextStyle(fontSize: 14.0, color: Colors.grey),
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                  controller: _idController,
                  decoration: InputDecoration(
                    labelText: "아이디 입력",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.amber,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.amber,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: "비밀번호 입력",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.amber,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.amber,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _pswdcheckController,
                  decoration: InputDecoration(
                    labelText: "비밀번호 확인",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.amber,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.amber,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: MediaQuery.of(context).copyWith().size.height,
                  height: 60,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.0),
                        side: BorderSide(color: Colors.grey)),
                    textColor: Colors.grey,
                    color: Colors.white,
                    child: Text('다음으로'),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/third");
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

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal:45.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 90.0,
              ),
              Text(
                "닉네임 입력",
                style: TextStyle(
                    fontSize: 26.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 90.0,
              ),
              TextFormField(
                controller: _pswdcheckController,
                decoration: InputDecoration(
                  labelText: "닉네임 입력",
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.amber,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.amber,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).copyWith().size.height,
                height: 60,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1.0),
                      side: BorderSide(color: Colors.grey)),
                  textColor: Colors.grey,
                  color: Colors.white,
                  child: Text('입력'),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/");
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
