import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class GetRepair extends StatefulWidget {

  @override
  _GetRepairState createState() => _GetRepairState();
}

class _GetRepairState extends State<GetRepair> {
  String result = "";
  static List<String> list = ["Bric-o-brac", "Car", "Clothes", "Furniture", "Kitchen Appliances", "Laptops", "Phones", "Plumbing", "Shoes"];
  List<String> newlist = List.from(list);

  void _randomClick() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(title: Text('Get Repair')),
      body: Center(

          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 173, left: 35, right: 30),
                  child: Text(
                    "What do you need to repair?",
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 19.0
                  ),
                  textAlign: TextAlign.left,
                )),
                Container(
                    margin: EdgeInsets.only(top:18, left: 30, right: 30),
                    height: 51,
                    child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 15),
                        hintText: "eg. toaster",
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w200,
                            fontStyle: FontStyle.italic,
                            fontSize: 20.0),
                        border: InputBorder.none),
                    textInputAction: TextInputAction.done,
                    onChanged: (value){
                      setState((){
                        newlist = list.where((it) => it.toLowerCase().contains(value.toLowerCase())).toList();
                    });
                    }),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(38)
                      ),
                      color: Color(0xffff3f2f0),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top:23, left:30, right: 30),
                    child: Text(
                        "Categories",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontStyle:  FontStyle.normal,
                          fontSize: 20.0
                        ))
                ),
                //BoxDecoration(border: Border.all(color: Colors.black, width: 2.0)),
                Container(
                  margin: EdgeInsets.all(30),
                  child: Wrap(
                      spacing: 17,
                      children: newlist.map((it) =>
                      Chip(
                      backgroundColor: Color(0xfffdca40),
                      labelStyle: TextStyle(
                          color:  Colors.black,
                          fontWeight: FontWeight.w200,
                          fontStyle:  FontStyle.italic,
                          fontSize: 20.0
                      ),
                      label: Container(
                          margin: EdgeInsets.all(4),
                          child: Text(it))
                      )).toList()

                  ))

                      //itemCount: newlist.length, itemBuilder: (BuildContext context, int index) {
                     /* return Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(
                          Radius.circular(38)
                        ),
                        color: Color(0xfffdca40)),
                        //height: 51,
                        margin: EdgeInsets.all(2),
                        child: TextButton(
                          onPressed: _randomClick,
                          //Center(
                          child: Text('${newlist[index]}', style: TextStyle(color: Colors.black),),
                          )
                        );

                       */
                    //}
                //EditableText(controller: TextEditingController.fromValue(value), focusNode: focusNode, style: style, cursorColor: cursorColor, backgroundCursorColor: backgroundCursorColor)
    //
                    //)),

                ]
          )
      )

          );
  }
}