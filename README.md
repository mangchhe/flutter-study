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
