### Widget 이란?

- UI를 만들고 구성하는 모든 기본 단위 요소
  - text, icon, image, text field, button
- 눈에 보이지 않는 요소들까지 위젯
  - center, column, padding

모든 것들이 위젯이다. 위젯으로 시작해서 위젯으로 끝난다고 보면 된다.

### Widget의 종류

- Stateless Widget
  - 상태가 없는 정적인 위젯을 의미
- Stateful Widget
  - 계속 움직임이나 변화가 있는 위젯을 의미
  - 사용자의 interaction에 따라서 모양이 변화하는 것 ex) text field
- Inherited Widget

### Widget Tree

- Widget들은 tree 구조(계층 구조)로 되어 있다.
- 계층 구조로 되어있어 다른 Widget들을 포함할 수 있다.
- 부모 - 자식 위젯으로 구성된다.
- Parent Widget는 여러 위젯을 담는다는 의미로 Widget Container라고도 부른다.

![FlutterProjectStructure](https://user-images.githubusercontent.com/50051656/119234643-f9b0b600-bb69-11eb-9750-6533e717f796.PNG)

- MyApp : 앱 루트 위젯, Custom Widget
- MaterialApp : 실질적으로 전체 앱을 감싸는 위젯
- MyHomePage : Custom Widget
- **Scaffold** : 앱 화면과 기능을 구성하기 위한 빈 페이지를 준비하는 위젯
- AppBar : 앱 화면 가장 상단 위젯
- Center : 상단을 제외한 위젯

### Flutter 프로젝트 폴더의 구성

- pubspec.yaml : 앱에 대한 필요한 메타 데이터들을 저장하는 설정 파일
- android/ios : 각 플랫폼에 맞게 앱을 배포하기 위한 정보들을 저장하는 공간
- test : 개발하기 위한 dart 관련 코드를 테스트할 수 있다.
- **lib** : 해당 폴더는 main.dart 파일을 가지고 있고 개발을 진행하면서 대부분의 작업을 진행하게 되는 공간

## Class & Function

- 클래스
  - 객체가 가져야 하는 상태와 기능을 정의한 내용을 담고 있는 설계도
- 객체
  - 클래스 정의 후에 메모리 상에 할당되었을 때 이를 객체라고 함
- 인스턴스
  - 클래스(설계도)를 기반으로 생성이 된 것을 인스턴스라고 함

``` dart
class Person {
  String? name;
  int? age;
  String? sex;

  Person.init(this.name, this.age, this.sex);

  Person({this.name = 'Hong Gil Dong', this.age = 20, this.sex = 'Male'});

}

int addNumber(int num1, int num2){
  return num1 + num2;
}

void main(){

  Person p1 = new Person();
  Person p2 = new Person.init('Ha Joo Hyun', 26, 'Male');
  Person p3 = new Person(name: 'IU', sex: 'Female', age: 29);

  print("name : ${p1.name} sex : ${p1.sex} age : ${p1.age}");
  print("name : ${p2.name} sex : ${p2.sex} age : ${p2.age}");
  print("name : ${p3.name} sex : ${p3.sex} age : ${p3.age}");

  print(addNumber(3, 4));
}
```

**알게 된 사실**
``` java
1. 변수 선언
// ? : nullable, var도 가능(타입 추론)
String? name;
int? age;
String? sex;

2. 생성자 생성 방법
// dart
Person(this.name, this.age, this.sex)
// java
Person(String name, int age, String sex){
  this.name = name;
  this.age = age;
  this.sex = sex;

3. 생성자 생성 방법2
// 파라미터 {} 감싸면서 default 값 줄 수 있음
Person({this.name = 'Hong Gil Dong', this.age = 20, this.sex = 'Male'});
}

4. 생성자 생성 방법3
Person.init(this.name, this.age, this.sex);

5. 객체 생성
Person p1 = new Person();
Person p2 = new Person.init('Ha Joo Hyun', 26, 'Male');
Person p3 = new Person(name: 'IU', sex: 'Female', age: 29);

6. 함수 생 및 호출
// 자바와 동일
int addNumber(int num1, int num2){
  return num1 + num2;
}
print(addNumber(3, 4));

7. 출력
// 자바와 같이 +로 연결 불가능
print("name : ${p1.name} sex : ${p1.sex} age : ${p1.age}");

```
## MyHomePage 속 모르는 개념들

- Scaffold
  - backgroundColor : 배경색 지정
  - appBar : 상단 위젯
    - centerTitle : 텍스트 가운데 정렬
  - body
    - Padding : 상하좌우 거리 조절 가능한 레이아웃 위젯
      - padding, EdgeInsets.fromLTRB(L, T, R, B) : 바깥 거리 조절
      - child
        - Column : 수직 위젯
          - crossAxisAligment, CrossAxisAligment.start : 위젯 시작 위치 지정
          - children
            - Center
              - CircleAvatar : avatar 넣기
                - backgroundImage: Image.network('<URL>').image,
                // backgroundImage: Image.asset('assets/iu.jpg').image,
                // backgroundImage: AssetImage('assets/iu.jpg'),
                - radius
            - Divider : 분리선(/hr)
              - height, color, thickness, endIndent
            - SizedBox : 박스
              - height, width
            - Row : 수평 위젯

## appBar 메뉴 아이콘 추가

``` dart
leading: IconButton(
  icon: Icon(Icons.menu),
  onPressed: () {
    print('menu button is clicked');
  },
),
actions: [
  IconButton(
    icon: Icon(Icons.shopping_cart),
    onPressed: () {
      print('Shopping cart button is clicked');
    },
  ),
  IconButton(
    icon: Icon(Icons.search),
    onPressed: () {
      print('Search button is clicked');
    },
  ),
],
```

- leading : 위젯 왼쪽에 추가
- actions : 위젯 오른쪽에 추가

## Drawer

![drawer](https://user-images.githubusercontent.com/50051656/120104784-2465c480-c191-11eb-908d-d387759f92b2.PNG)

- ListView
  - UserAccountDrawerHeader : 상단
  - ListTile : 하단

## BuildContext

- Widget tree에서 widget의 위치 정보를 다룬다.
- Widget build(BuildContext context)
  - Scaffold위젯을 리턴하고 위젯 트리 상에서 어디에 위치하는가에 대한 정보를 가진 build 메소드
- BuildContext 는 stateless 위젯이나 state 빌드 메소드에 의해서 리턴 된 위젯의 부모가 된다.

- Scaffold.of(context) method
  - 현재 주어진 context 에서 위로 올라가면서 가장 가까운 **Scaffold** 를 찾아서 반환하는 함수
- Something.of(context)
  - 현재 주어진 context 에서 위로 올라가면서 가장 가까운 **Something** 을 찾아서 반환하는 함수
- Theme.of(context)
  - 현재 주어진 context 에서 위로 올라가면서 가장 가까운 **Theme** 을 찾아서 반환하는 함수

※ context : BuildContext 의 인스턴스

![scaffoldDir](https://user-images.githubusercontent.com/50051656/120074594-90382680-c0d8-11eb-932c-95bb3dcaee7d.PNG)

context 위치 정보가 MyPage로 되어있어 Scaffold를 찾지 못하여 오류가 발생한다.

![scaffoldDirSolv](https://user-images.githubusercontent.com/50051656/120074598-91695380-c0d8-11eb-90c4-b0efe76fe1a9.PNG)

Builder Widget과 Stateless Widget을 이용하여 파라미터로 전달되는 위치 정보를 Widget tree 상에 Scaffold 아래에 위치시킴으로서 Scaffold의 위치를 찾아낼 수 있다.

**But**, 현재 Scaffold.of는 deprecated 되어 있고 ScaffoldMessenger.of를 이용해야하며 ScaffoldMessenger.of를 이용하면 내부적으로 Scaffold가 내장되어 있어서 불필요하게 Builder와 같은 것을 이용할 필요가 없다

[ScaffoldMessenger Reference](https://flutter.dev/docs/release/breaking-changes/scaffold-messenger)

## Widget

flutter Layout Widget은 3가지로 나뉨

- Single-child layout widgets
- Multi-child layout widgets
- Sliver widgets

[Layout Widget Reference](https://flutter.dev/docs/development/ui/widgets/layout#Multi-child%20layout%20widgets)

### Container(Single-child)

- children이 없을 경우 가능한 최대한 공간을 차지한다.
- children이 있을 경우 소속되어 있는 위젯의 크기만큼 공간을 가짐
- 화면 밖으로 빠져나가지 않게 경계를 지정해주는 SafeArea로 감싸줄 필요가 있다.

### Column & Row(Multi-child)

- 가로축은 소속되어 있는 위젯의 크기만큼 차지하고 새로축은 모두 차지한다.
- 새로축을 모두 차지하기 때문에 Center로 감싸도 새로축은 가운데 정렬이 되지 않는다
  - `mainAxisAlignment: MainAxisAlignment.center`를 이용해서 가운데 정렬하는 방법
  - `mainAxisSize: MainAxisSize.min`를 이용해서 차지하는 공간을 필수적으로 필요하는 최소한의 공간으로 지정하는 방법
- `verticalDirection: VerticalDirection.up(down)` 위젯을 아래에서 쌓을지 위에서 쌓을지 결정할 수 있다.
- `crossAxisAlignment: CrossAxisAlignment.center` Column 위젯 가로축 공간 내에서 정렬이 이루어짐
  - 내부에 Container를 만들고 `width: double.infinity` 속성을 주어 crossAxis와 연동하여 가로측 우측정렬을 할 수 있다.
  
[Layout 학습 사이트](https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e)

## Navigator 

- 페이지 간 이동을 구현할 때 사용
- 페이지에 대한 데이터를 관리하기 위해서 Stack 자료구조를 이용

## Collection and Generic

``` dart
// Collection
List<int> number = List.filled(0, 0, growable: true); // growable list
List<int> number = []; // growable list
List<int> number = List.filled(0, 0); // fixed length list

// Generic
int addNumber(int num1, int num2){
  return num1 + num2;
}

void main(){
  // List<dynamic> number = [];
  List<int> number = [];
  
  number.add(2);
  // number.add('test');
  // number.add(7.4);
  number.add(addNumber(3,4));
  // number.add(true);
}

// Generic Class

class Circle {}
class Square {}

class SquareSlot {
  insert (Square squareSlot){}
}

class CircleSlot {
  insert (Circle circleSlot){}
}

// 사용 전

void main(){
  var circleSlot = new CircleSlot();
  circleSlot.insert(new Circle());

  var squareSlot = new SquareSlot();
  squareSlot.insert(new Square());
}

// 사용 후

class Slot<T> {
  insert(T shape){}
}

void main(){
  Slot<Circle> circleSlot2 = new Slot();
  circleSlot2.insert(new Circle());
  
  Slot<Square> squareSlot2 = new Slot();
  squareSlot2.insert(new Square());
}
```

[List Reference](https://api.flutter.dev/flutter/dart-core/List-class.html)
