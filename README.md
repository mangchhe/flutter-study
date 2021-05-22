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

### 기본 코드

``` dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Tutorial'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Hello World!'),
            Text('My Name is JooHyun!')
          ],
        ),
      ),
    );
  }
}
```
