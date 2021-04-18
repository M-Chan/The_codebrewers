import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/page1.dart';
import 'package:splashscreen/splashscreen.dart';

import 'dart:async';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
    return MaterialApp(
      title: 'splashscreen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xfffdca40),
        fontFamily: "Lato",
      ),
      home: SplashScreenPage()
    );
  }
}

class SplashScreenPage extends StatefulWidget {
  @override
  SplashScreenPageState createState() => SplashScreenPageState();
}
class SplashScreenPageState extends State<SplashScreenPage> {
  void navigateMyHomePage() {
    Navigator.push(context,MaterialPageRoute(builder: (context) => MyHomePage()));
  }

  startSplashScreenTimer() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigateMyHomePage);
  }

  @override
  void initState() {
    super.initState();
    startSplashScreenTimer();
  }

  @override
  Widget build(BuildContext context){
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Container(
      child: new Image.asset('assets/splash_screen.png', fit: BoxFit.fill)
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _buttonText1 = "Get repair";
  String _buttonText2 = "Provide repair";
  String _buttonText3 = "I want to donate an item";

  void _navigateGetRepair() {
    Navigator.push(context,MaterialPageRoute(builder: (context) => GetRepair()));
  }

  void _changeButton2Text() {
    setState(() {
      if (_buttonText2 == "Provide repair") {
        _buttonText2 = "random";
      }
      else {
        _buttonText2 = "Provide repair";
      }
    });
  }

  void _changeButton3Text() {
    setState(() {
      if (_buttonText3 == "I want to donate an item") {
        _buttonText3 = "random";
      }

      else {_buttonText3 = "I want to donate an item";}
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
          child: ListView(
            children: <Widget>[DrawerHeader(
              child: Text("Account"),
              decoration: BoxDecoration(color: Color(0xfffdca40))
            ),
              ListTile(title: Text("Your trades")),
            ]
          )),

      appBar: AppBar(
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 112),
              width: 143,
              height: 143,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/lucy_pic.png'),
                      fit: BoxFit.fill)),),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: Text("Hello, Lucy", style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                fontSize: 24)),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top:59, right: 30, bottom: 30),
              child: RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                          style: const TextStyle(
                              color:  Colors.black,
                              fontWeight: FontWeight.w400,
                              fontStyle:  FontStyle.normal,
                              fontSize: 22.0
                          ),
                          text: "It’s good to have your in our community. "),
                      TextSpan(
                          style: const TextStyle(
                              color:  Colors.black,
                              fontWeight: FontWeight.w700,
                              fontStyle:  FontStyle.normal,
                              fontSize: 22.0
                          ),
                          text: "What do you need?")
                    ]
                )
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 13, bottom: 13),
                  width: 165,
                  height: 51,
                  decoration: BoxDecoration(
                    color: Color(0xfffdca40),
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                  ),
                  child: TextButton(
                    onPressed: _navigateGetRepair,
                    child: Text(_buttonText1, textAlign: TextAlign.center, style: TextStyle(
                        color: Color(0xff383735),
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 18
                    )),
                    ),
                  ),
                Container(
                  margin: EdgeInsets.only(bottom: 13),
                  width: 165,
                  height: 51,
                  decoration: BoxDecoration(
                    color: Color(0xff2176ff),
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                  ),
                  child: TextButton(
                    onPressed: _changeButton2Text,
                    child: Text(_buttonText2, textAlign: TextAlign.center, style: TextStyle(
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 18
                    )),
                )
                )
              ]
            ),
            Container(
              margin: EdgeInsets.only(bottom: 90),
              width: 343,
              height: 51,
              decoration: BoxDecoration(
                color: Color(0xff383735),
                borderRadius: BorderRadius.all(Radius.circular(35)),
              ),
              child: TextButton(
                onPressed: _changeButton3Text,
                child: Text(_buttonText3, textAlign: TextAlign.center, style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize:18
                )),
              )
            )
          ],
        ),
      ),
    );
  }
}
