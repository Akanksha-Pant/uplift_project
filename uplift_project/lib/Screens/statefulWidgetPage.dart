import 'dart:html';

import 'package:flutter/material.dart';

class StatefulWidgetPage extends StatefulWidget {
  @override
  _StatefulWidgetPageState createState() => _StatefulWidgetPageState();
}

class _StatefulWidgetPageState extends State<StatefulWidgetPage> {
  @override

  printHelloWorld(){
    print("Helllo World");
  }
  void initState(){
    super.initState();
    printHelloWorld();
  }
  int counter  = 0;
  incrementCounter(){

    setState(() {
      counter++;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful Widget Page"),),
      body: Center(
        child: Container(
          width: 1200,
          color: Colors.pinkAccent,
          child: ElevatedButton(
            onPressed: (){incrementCounter();},
            child: Container(

              child: Text(counter.toString(), style: TextStyle(fontSize: 100),),
            ),
          ),
        ),
      )
    );
  }
}
