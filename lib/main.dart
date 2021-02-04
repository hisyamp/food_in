import 'package:flutter/material.dart';
import 'package:food_in/constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FoodiN',
      theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme: TextTheme(
            bodyText1: TextStyle(color: kBodyTextColor),
          )),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  // List<Widget> widgets = [];

  // HomeScreen() {
  //   for (int i = 0; i < 5; i++) widgets.add(Text("data ke - " + i.toString()));
  // }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            height: 211,
            width: double.infinity,
            child: Image.asset('assets/images/1.png'),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0)),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFF000000),
                  Color(0xFF111111),
                ],
              ),
            ),
          ),
          Container(
              height: 65,
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Row(children: <Widget>[
                Text(
                  "Hisyam Priaji",
                  style: TextStyle(fontSize: 23),
                ),
                Spacer(),
                new Container(
                  child: new IconButton(
                      icon: new Icon(
                        Icons.account_circle_sharp,
                        size: 40.0,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SecondScreen();
                        }));
                      }),
                ),
              ])),
          Container(
            height: 66,
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFFC3BCAE),
                  Color(0xFFE7E7E7),
                ],
              ),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0)),

              // image: DecorationImage(
              //   image: AssetImage("assets/images/1.png"),
              // ),
            ),
            child: Row(
              children: <Widget>[
                new Icon(
                  Icons.account_balance_wallet_sharp,
                  size: 40.0,
                  color: Colors.black,
                ),
                Spacer(
                  flex: 1,
                ),
                Text(
                  "Isi Saldo",
                  style: TextStyle(fontSize: 23),
                ),
                Spacer(
                  flex: 12,
                ),
                new Container(
                  child: new IconButton(
                      icon: new Icon(
                        Icons.add,
                        size: 40.0,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SecondScreen();
                        }));
                      }),
                ),
              ],
            ),
          ),
          // ListView(
          //   children: widgets,
          // ),
          Container(
            height: 40,
            padding: EdgeInsets.all(10),
            child: Text(
              "Promo Hari ini :",
              style: TextStyle(fontSize: 19),
            ),
          ),
          Container(
            height: 180,
            width: 360,
            child: IconButton(
              icon: Image.asset(
                'assets/images/2.jpg',
              ),
              iconSize: 50,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PesananQ();
                }));
              },
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFF000000),
                  Color(0xFF111111),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 18),
            padding: EdgeInsets.only(
              left: 32,
              right: 32,
            ),
            height: 60,
            width: 220,
            child: new Row(
              children: <Widget>[
                new Container(
                  child: new IconButton(
                      icon: new Icon(
                        Icons.chat_rounded,
                        size: 40.0,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SecondScreen();
                        }));
                      }),
                ),
                Spacer(
                  flex: 1,
                ),
                new Container(
                  child: new IconButton(
                      icon: new Icon(
                        Icons.home,
                        size: 40.0,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SecondScreen();
                        }));
                      }),
                ),
                Spacer(
                  flex: 1,
                ),
                new Container(
                  child: new IconButton(
                      icon: new Icon(
                        Icons.add_location_alt_rounded,
                        size: 40.0,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SecondScreen();
                        }));
                      }),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFFC3BCAE),
                  Color(0xFFE7E7E7),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            child: Image.asset(
              'assets/images/4.png',
            ),
            height: 450,
            width: 450,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              "Maaf ya,Fitur ini belum berfungsi",
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
          new Container(
            width: 60,
            height: 60,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(2),
            child: new IconButton(
                icon: new Icon(
                  Icons.navigate_before,
                  size: 40.0,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }));
                }),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFFC3BCAE),
                  Color(0xFFE7E7E7),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class PesananQ extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PesananQState();
  }
}

class _PesananQState extends State<PesananQ> {
  String pesan = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20),
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput) {
                setState(() {
                  pesan = userInput;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                "Tuliskan Pesanan Anda",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Pesanan : $pesan",
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
