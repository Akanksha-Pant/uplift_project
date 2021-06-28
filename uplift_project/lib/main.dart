import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uplift_project/Screens/statefulWidgetPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyStatelessWidget(),
            MyStatefulWidget(),
          ],
        ),
      ),

    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 400,
      padding: EdgeInsets.all(10),
      color: Colors.green,
      child : Center(child : Text("I Am a stateless widget", style: TextStyle(color: Colors.white, fontSize: 25),),),
    );
  }
}




class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool ifToggle = true;
  Color widgetColor = Colors.cyan;
  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StatefulWidgetPage()),
        );
        setState(() {
          if(widgetColor == Colors.red){
            widgetColor = Colors.cyan;
          }
          else{
            widgetColor = Colors.red;
          }

        });
      },

      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(top: 10),
        height: 100,
        width: 400,
        color: widgetColor,
        child : Center(child : Text("I Am a stateful widget", style: TextStyle(color: Colors.white, fontSize: 25)), ),
      ),
    );
  }
}
