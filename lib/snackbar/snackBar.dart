import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
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
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: Builder(builder: (BuildContext ctx) {
        return Center(
          child: ElevatedButton(
            child: Text('Show me',
              style: TextStyle(
                  color: Colors.white
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.red
            ),
            onPressed: (){
              Scaffold.of(ctx).showSnackBar(SnackBar(content: Text("Hello")));
            },
          ),
        );
      },)
    );
  }
}
