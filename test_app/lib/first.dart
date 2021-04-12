import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String uiIndex;
  var uiResult;

  double num1, num2;
  double result;
  String operator = '';

  List colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.purple
  ];
  int colorNum;

  /// 버튼을 눌렀을 때
  /// 1. 숫자의 경우 (0제외)
  /// 2. 연산의 경우
  /// 3. C 나 =의 경우

  void buttonPressed(String buttonIndex) {
    ///초기화
    if (buttonIndex == 'C') {
      setState(() {
        uiIndex = '0';
        uiResult = '0.0';
        num1 = 0;
        num2 = 0;
      });
    }

    ///숫자를 눌렀을 경우
    if (buttonIndex == '0' ||
        buttonIndex == '1' ||
        buttonIndex == '2' ||
        buttonIndex == '3' ||
        buttonIndex == '4' ||
        buttonIndex == '5' ||
        buttonIndex == '6' ||
        buttonIndex == '7' ||
        buttonIndex == '8' ||
        buttonIndex == '9') {
      setState(() {
        ///uiInderx의 경우
        buttonIndex == '0' && uiIndex == '0'
            ? uiIndex = '0'
            : uiIndex == '0'
                ? uiIndex = '$buttonIndex'
                : uiIndex += '$buttonIndex';

        ///uiResult의 경우
        buttonIndex == '0' && uiResult == '0.0'
            ? uiResult = '0.0'
            : uiResult == '0.0'
                ? uiResult = '$buttonIndex'
                : uiResult += '$buttonIndex';
      });
    }

    ///연산의 버튼을 눌렀을 때
    if (buttonIndex == '+' ||
        buttonIndex == '-' ||
        buttonIndex == '*' ||
        buttonIndex == '/') {
      setState(() {
        ///숫자를 받는 로직
        num2 = double.parse(uiResult);

        ///ui로직
        uiIndex += ' $buttonIndex ';
        uiResult = '0.0';
        operator = buttonIndex;
      });
    }

    ///답 출력 (=을 눌렀을 경우)
    if (buttonIndex == '=') {
      setState(() {
        num1 = num2;
        num2 = double.parse(uiResult);
        result = calculation(num1, num2);
        uiResult = result.toString();
      });
    }
  }

  ///계산 로직
  double calculation(double n1, double n2) {
    double temp;
    switch (operator) {
      case '+':
        temp = (n1 + n2) as double;
        break;
      case '-':
        temp = (n1 - n2) as double;
        break;
      case '*':
        temp = (n1 * n2) as double;
        break;
      case '/':
        temp = (n1 / n2);
        break;
    }
    return temp;
  }

  ///초기화
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    uiIndex = '0';
    uiResult = '0.0';
    num1 = 0;
    num2 = 0;
    colorNum = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors[colorNum],
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: colors[colorNum][200],
        title: Center(
            child: Text(
          '202004026 이삭',
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(10),
              color: colors[colorNum][200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "$uiIndex",
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(10),
              color: colors[colorNum][200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "$uiResult",
                        style: TextStyle(
                            fontSize: 58, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Flexible(
              flex: 7,
              child: Container(
                color: colors[colorNum][200],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        flatButton('7', colors[colorNum][300], Colors.white),
                        flatButton('8', colors[colorNum][300], Colors.white),
                        flatButton('9', colors[colorNum][300], Colors.white),
                        flatButton('*', colors[colorNum][300], Colors.white),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        flatButton('4', colors[colorNum][300], Colors.white),
                        flatButton('5', colors[colorNum][300], Colors.white),
                        flatButton('6', colors[colorNum][300], Colors.white),
                        flatButton('-', colors[colorNum][300], Colors.white),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        flatButton('1', colors[colorNum][300], Colors.white),
                        flatButton('2', colors[colorNum][300], Colors.white),
                        flatButton('3', colors[colorNum][300], Colors.white),
                        flatButton('+', colors[colorNum][300], Colors.white),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        flatButton('C', colors[colorNum][300], Colors.white),
                        flatButton('0', colors[colorNum][300], Colors.white),
                        flatButton('=', colors[colorNum][300], Colors.white),
                        flatButton('/', colors[colorNum][300], Colors.white),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Flexible flatButton(var buttonTxt, Color buttonColor, Color txtColor) {
    return Flexible(
      flex: 1,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.22,
        height: MediaQuery.of(context).size.height * 0.14,
        child: FlatButton(
          color: buttonColor,
          onPressed: () {
            colorNum == 5 ? colorNum = 0 : colorNum += 1;
            buttonPressed(buttonTxt);
          },
          child: Text(
            '$buttonTxt',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w400,
              color: txtColor,
            ),
          ),
        ),
      ),
    );
  }
}
