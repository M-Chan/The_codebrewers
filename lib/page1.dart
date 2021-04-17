import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Page1 extends StatefulWidget {

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  String result = "";
  static List<String> list = ["Bric-o-brac", "Car", "Clothes", "Furniture", "Kitchen Appliances", "Laptops", "Phones", "Plumbing", "Shoes"];
  List<String> newlist = List.from(list);

  void _randomClick() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Get Repair')),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("What do you need to repair?"),
                TextField(
                  textInputAction: TextInputAction.done,
                  onChanged: (value){
                    setState((){
                      newlist = list.where((it) => it.contains(value)).toList();
                      //result = value;
                    });
                    },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                Text(result),
                Text("Categories"),
                //BoxDecoration(border: Border.all(color: Colors.black, width: 2.0)),
                Container(
                  //padding: const EdgeInsets.all(4.0),
                  //alignment: Alignment.center,
                  child: Expanded(
                    child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0,

                    ),
                    itemCount: newlist.length, itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        margin: EdgeInsets.all(2),
                        color: Colors.lightBlueAccent,
                        child: OutlinedButton(
                          onPressed: _randomClick,
                          //Center(
                          child: Text('${newlist[index]}'),
                          )
                        );
                      //);
                    }
                //EditableText(controller: TextEditingController.fromValue(value), focusNode: focusNode, style: style, cursorColor: cursorColor, backgroundCursorColor: backgroundCursorColor)
    //
                    )),

                )]
          )
      )

          );
  }
}

/*
class MyHomePage extends StatefulWidget {

  @override
  _Page1State createState() => _Page1State();

}


class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) => MaterialApp();

}
*/
