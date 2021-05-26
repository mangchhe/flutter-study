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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/iu.jpg'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/iu2.png'),
                  backgroundColor: Colors.white,
                )
              ],
              accountName: Text('IU'),
              accountEmail: Text('IU@IU.com'),
              onDetailsPressed: (){
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Color.fromRGBO(243, 163, 207, 1.0),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0)
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,
                color: Colors.black,
              ),
              title: Text('home'),
              onTap: (){
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings,
                color: Colors.black,
              ),
              title: Text('setting'),
              onTap: (){
                print('Setting is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer,
                color: Colors.black,
              ),
              title: Text('Q&A'),
              onTap: (){
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

