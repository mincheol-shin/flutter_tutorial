import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fifth practice',
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPage(),
        '/second': (context) => SecondPage(),
        '/third': (context) => ThirdPage(),
      },
      theme: ThemeData(
        appBarTheme: AppBarTheme(
        elevation: 0.0,
          color: Colors.white,
        )
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool action = false;
  bool action1 = false;

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    suffixIcon: IconButton(
                      onPressed: () => _idController.clear(),
                      color: Colors.grey,
                      icon: Icon(Icons.clear),),
                  ),
                  onChanged: (value) {
                    setState(() {
                      if (value.isEmpty) {
                        action = false;
                      } else {
                        action = true;
                      }
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
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
                    suffixIcon: IconButton(
                      onPressed: () => _passwordController.clear(),
                      color: Colors.grey,
                      icon: Icon(Icons.clear),),
                  ),
                  onChanged: (value) {
                    setState(() {
                      if (value.length > 4 && action1 == false) {
                        action1 = true;
                      } else {
                        action1 = false;
                      }
                    });
                  },
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: MediaQuery.of(context).copyWith().size.height,
                  height: 60,
                  child: action1
                      ? FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1.0),
                              side: BorderSide(color: Colors.grey)),
                          textColor: Colors.white,
                          color: Colors.amber,
                          child: Text(
                            '로그인',
                            style: TextStyle(fontSize: 16),
                          ),
                          onPressed: () {},
                        )
                      : Container(
                          color: Colors.white,
                          child: Center(
                              child: Text(
                            '로그인',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          )),
                        ),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 80,
                    ),
                    FlatButton(
                      child: Text(
                        "회원가입",
                        style: TextStyle(fontSize: 12.0, color: Colors.grey),
                      ),
                      onPressed: () {
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
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _pswdcheckController = TextEditingController();
  bool action = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.grey,),onPressed: (){
        Navigator.pushReplacementNamed(context, "/");
      },)),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
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
                  suffixIcon: IconButton(
                    onPressed: () => _idController.clear(),
                    color: Colors.grey,
                    icon: Icon(Icons.clear),),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
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
                  suffixIcon: IconButton(
                    onPressed: () => _passwordController.clear(),
                    color: Colors.grey,
                    icon: Icon(Icons.clear),),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
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
                  suffixIcon: IconButton(
                    onPressed: () => _pswdcheckController.clear(),
                    color: Colors.grey,
                    icon: Icon(Icons.clear),),
                ),
                onChanged: (value){
                  setState(() {
                    if(value == _passwordController.text && action == false){
                      action = true;
                    }else{
                      action = false;
                    }
                  });
                },
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).copyWith().size.height,
                height: 60,
                child: action
                    ? FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.0),
                            side: BorderSide(color: Colors.grey)),
                        textColor: Colors.white,
                        color: Colors.amber,
                        child: Text('다음으로',style: TextStyle(fontSize: 16),),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, "/third");
                        },
                      )
                    : Container(
                        color: Colors.white,
                        child: Center(
                            child: Text(
                          '다음으로',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        )),
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

  final TextEditingController _nameController = TextEditingController();
  bool action = false;

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.grey,),onPressed: (){
        Navigator.pushReplacementNamed(context, "/second");
      },)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 45.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             
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
                controller: _nameController,
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
                  suffixIcon: IconButton(
                    onPressed: () => _nameController.clear(),
                    color: Colors.grey,
                    icon: Icon(Icons.clear),),
                ),
                onChanged: (value){
                  setState(() {
                    if(value.length > 0){
                      action = true;
                    }else{
                      action = false;
                    }
                  });
                },
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).copyWith().size.height,
                height: 60,
                child: action ? FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1.0),
                      side: BorderSide(color: Colors.grey)),
                  textColor: Colors.white,
                  color: Colors.amber,
                  child: Text('입력', style: TextStyle(fontSize: 16),),
                  onPressed: () {
                    showToast();
                    Navigator.pushReplacementNamed(context, "/");
                  },
                ) :  Container(
                  color: Colors.white,
                  child: Center(
                      child: Text(
                        '입력',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void showToast() {
  Fluttertoast.showToast(
      msg: "회원가입이 완료되었습니다.",
      gravity: ToastGravity.CENTER,
      backgroundColor: Colors.black,
      fontSize: 16.0,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_LONG);
}
