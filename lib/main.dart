import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/page1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fixable',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Color(0xfffdca40),
        fontFamily: "Lato",
      ),
      home: MyHomePage(title: 'Fixable Home Page')
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _buttonText1 = "Get repair";
  String _buttonText2 = "Provide repair";
  String _buttonText3 = "I want to donate an item";

  void _changeFunction1() {
    Navigator.push(context,MaterialPageRoute(builder: (context) => Page1()));
  }

  void _changeFunction2() {
    setState(() {
      if (_buttonText2 == "Provide repair") {
        _buttonText2 = "random";
      }
      else {
        _buttonText2 = "Provide repair";
      }
    });
  }

  void _changeFunction3() {
    setState(() {
      if (_buttonText3 == "I want to donate an item") {
        _buttonText3 = "random";
      }

      else {_buttonText3 = "I want to donate an item";}
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

            ColoredBox(
              color: Color(0xfffdca40),
              //width: 414,
              //height: 186,
              //decoration: BoxDecoration(color: Color(0xfffdca40))
            ),
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
            //Text(""),
            //RichText("It's good to have you in our community.\nWhat do you need?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
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
                    onPressed: _changeFunction1,
                    child: Text(_buttonText1, textAlign: TextAlign.center, style: TextStyle(
                        color: Color(0xff383735),
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 18
                    )),
                    ),
                  ),
                //Container(width: 25,),
                Container(
                  margin: EdgeInsets.only(bottom: 13),
                  width: 165,
                  height: 51,
                  decoration: BoxDecoration(
                    color: Color(0xff2176ff),
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                  ),
                  child: TextButton(
                    onPressed: _changeFunction2,
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
                onPressed: _changeFunction3,
                child: Text(_buttonText3, textAlign: TextAlign.center, style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize:18
                )),
              )
            )

            //Image.asset('assets/fixable_logo.png', width: 100.0, height: 100.0, fit: ,)
          ],
        ),
      ),

    );
  }
}
