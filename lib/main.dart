/*import 'package:doan/pages/homepages.dart';*/
import 'package:flutter/material.dart';
/*import './pages/homepages.dart';*/
void main() => runApp(MyApp());
class MyApp extends StatefulWidget{
  @override 
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          color: Colors.blue,
            child: Row(
              children: [new CircleAvatar(
            backgroundImage: new NetworkImage('https://caothang.edu.vn/en/templates/images/logo.png',),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
            child: TextField(
              style: TextStyle(fontSize: 20, color: Colors.black),
              decoration: InputDecoration(
                labelText: "Username",
                labelStyle: 
                    TextStyle(color: Color(0xff888888), fontSize: 15)),
              ),
            ),
              ],
      ),
        ),
      ),
    );
  }
}
 /* runApp(new MaterialApp(
    home: new HomePage()
  ));
} */   
