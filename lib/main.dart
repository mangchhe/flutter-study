import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Tutorial',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 163, 207, 1.0),
      appBar: AppBar(
        title: Text('Flutter Tutorial'),
        backgroundColor: Color.fromRGBO(243, 163, 207, .7),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                // backgroundImage: Image.network('https://image.bugsm.co.kr/artist/images/1000/800491/80049126.jpg').image,
                // backgroundImage: Image.asset('assets/iu.jpg').image,
                backgroundImage: AssetImage('assets/iu.jpg'),
                radius:  60.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.white,
              thickness: .5,
              endIndent: 30.0,
            ),
            Text('NAME',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0
            ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('LEE JI EUN',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text('IU Age',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('29',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outlined),
                SizedBox(
                  width: 10.0,
                ),
                Text('아이유 아이유 미소천사 아이유!',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outlined),
                SizedBox(
                  width: 10.0,
                ),
                Text('아이유 아이유 아.이.유.짱',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outlined),
                SizedBox(
                  width: 10.0,
                ),
                Text('말랑 말랑 말랑 말랑해',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/iu2.png'),
                  radius: 40.0,
                  backgroundColor: Color.fromRGBO(243, 163, 207, 1.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

