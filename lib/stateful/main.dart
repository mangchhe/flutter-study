import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$count'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: (){
                      setState(() {
                        count++;
                      });
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(
                      child: Icon(Icons.remove),
                      onPressed: (){
                        setState(() {
                          count--;
                        });
                      }
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}