<<<<<<< HEAD
<br>

# :blue_book: Stateful Widget Lifecycle

<br>

##state의 개념

-state객체는 해당되는 위젯을 모두 가변 상태로 쓸 수 있게 한다. 그래서 위젯이 사용하는 <u>데이터는 변경할 수 있고 위젯이 빌드 될 때 데이터를 동시에 읽을 수 없다<u/>. (모든 state는 빌드 메서드가 호출 될 때까지 설정되어야 한다.)


### StatefulWidget VS State class

-stateful 위젯은 구성이 변경될 때마다 폐기 후 다시 작성함. 그러나 state 객체는 유지 되어있음. 
-state는 다시 빌드할 때마다 유지됨으로 비용이 적게 들고 프레임별로 프레임이 재구성 될 때 마다state, getter, setter등에서 가져온다. 그리고 이것이 플러터 애니메이션을 존재하도록 한다. 또한 언제든지 위젯을 재구성 할 수 있다. 
-Stateless 위젯은 라이프사이클이 없음. Stateful 위젯은 State 클래스를 통해 라이프사이클을 지원함.

##state 객체

###createState()

-플러터가 StatefulWidget 클래스를 만들 때 호출되는 함수. 가변을 시킬려면 이 메서드가 반드시 있어야 한다. 이 메서드를 제외하고는 나머지는 모두 state 클래스 내부에 존재해야함

###mounted is true (mounted의 상태가 true가 되었다는 뜻)

-createstate가 state클래스에 생성하면 buildComtext는 state에 할당. BuildContext는 위젯이 배치된 위젯 트리의 위치를 단순화 한 것이다. (에디터에 stful로 확인하면서 무슨 말인지 대충 감은 잡았는데,, 사실 정확한 뜻은 잘 모르겠습니다 ㅠㅠ)
-모든 위젯은 bool 형식의 this.mounted 속성을 가지고 있다. buildContext가 할당되면 true를 리턴한다. 위젯이 unmouted상태일 때,  setState를 호출하면 error가 발생한다.


###initState()

-위젯이 생성될 때 가장 먼저 호출되고 상태를 초기화 시켜주는 함수다. 한 번만 호출해야 하며 super.initState() 을 반드시 호출해야함.
-장점에는 BuildContext에 의존적인 것들의 데이터와 동일 위젯트리내에 부모 위젯에 의존하는 속성을 초기화

###didChangeDependencies()

-이 메서드는 위젯이 최초 생성될 때, initState다음에 바로 호출된다. 상태 객체의 의존성이 변경되면 호출된다. 


###build()

-자주 호출되는 메서드. 위젯을 화면에 표시하는 메소드.
-화면에 표시할 위젯을 반환해야함 (필수이며 재정의 대상(@override)이고 반드시 Widget을 리턴해야 한다.) 

###didUpdateWidget(Widget oldWidget)

- 위젯의 설정이 변경될 때 호출 (부모 위젯이 변경되어 이 위젯을 재 구성해야 하는 경우)

###setState

-위젯의 상태를 갱신
-이 메소드를 실행하면 위젯을 처음부터 다시 만들지만 initState() 메소드는 호출되지 않음
-‘데이터가 변경되었음’을 프레임워크에 알리는데 사용되며 build context의 위젯을 다시 빌드하게 함
-setState()는 비동기적이 않은 callback을 사용함 (callback으로 비동기를 사용할 수 없다는 뜻이다)

###dispose()

-state 객체가 영구히 제거된다.

###mounted is false

-이 상태에서 state 객체는 결코 다시 mount되지 않으며, setState()가 호출되면 에러가 발생한다.
=======
# Lifecycle
>>>>>>> edefd5cdfdddeead4da6c072abfb15f0ef5c5e3f
