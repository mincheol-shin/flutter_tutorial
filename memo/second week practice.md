<br>

# :blue_book: Second week practice

<br>

## ui 배운 것들

- Container을 쓸 때, alignment을 통해 시작점을 어디로 정할 지 결정 / padding을 통해 얼마나 공간을 줄 건지 설정 
- Expanded & Fexible을 쓸 때, flex(비율을 가르킴)를 통해 차지하는 공간을 설정 할 수 있음
- Containor안에 버튼을 이용할 때, 전체 크기를 사용하고 싶을 때,  width: double.infinity, height: double.infinity, 을 씀으로 전체 공간을 사용할 수 있다. (더 많은 방법은 존재)

### 위치 레이아웃 

- Column: 세로(수직)방향으로 위젯을 위치시킴, Row: 가로(수평)방향으로 위젯을 위치시킴 
- 방향성이 있는 프로퍼티 : MainAxis(가로) & crossAxis(세로) ex)  mainAxisAlignment: MainAxisAlignment.center (가로로 균등하게 분배)

### button

-버튼 종류에는 Raised(튀어나와있는 버튼), Flat(평평한 버튼[현재 쓰는 버튼]), Icon(아이콘을 표시하는 버튼), FloatingAction(입체감있는 둥근 버튼)

### 나머지 배운 것들

- 함수를 이용해서 정보들을 넘기고 그 정보들을 함수에서 이용하는 법을 배웠다. 
  ex) FlatButton('4', Colors.white, Colors.black), 라고 넘겨주면  FlatButton(var button_txt, Color button_color, Color txt_color) 이런식으로 받는 것

<br> 

로직 부분은 선배님에게 질문이 조금 필요할 것 같아서 하지 못했습니다 ㅜㅜ 
그리고 그 문제에 대해서 계속 오늘 살펴 보았는데,,,, 숫자부분의 flex:3의 데이터가 계속 살아있는 것 같습니다..!