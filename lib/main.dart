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
      theme: ThemeData(
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
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
              decoration: BoxDecoration(color: Colors.blue)
            ),
              ListTile(title: Text("Your trades")),
            ]
          )),

      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/fixable_logo.png'),
                      fit: BoxFit.fill)),),
            Text("Hello, Lucy", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            //Text(""),
            Text("It's good to have you in our community.\nWhat do you need?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 150,
                  height: 50,
                  child: OutlinedButton(
                    onPressed: _changeFunction1,
                    child: Text(_buttonText1, textAlign: TextAlign.center,),
                    ),

                  ),
                Container(width: 25,),
                Container(
                  width: 150,
                  height: 50,
                  child: OutlinedButton(
                    onPressed: _changeFunction2,
                    child: Text(_buttonText2, textAlign: TextAlign.center),
                )

                )
              ]
            ),

            Container(
              width: 325,
              height: 50,
              child: OutlinedButton(
                onPressed: _changeFunction3,
                child: Text(_buttonText3, textAlign: TextAlign.center),
              )
            )

            //Image.asset('assets/fixable_logo.png', width: 100.0, height: 100.0, fit: ,)
          ],
        ),
      ),

    );
  }
}
