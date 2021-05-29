import 'package:flutter/material.dart';
import 'package:flutter_tutorial/snackbar/snackBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar2',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar2'),
        centerTitle: true,
      ),
      body: MySnackBar(),
    );
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Show me'),
        onPressed: (){
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('Hello', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.teal,
            duration: Duration(milliseconds: 2000),
          ));
        },
      ),
    );
  }
}
