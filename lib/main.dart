import 'package:doan/pages/homepages.dart';
import 'package:flutter/material.dart';
import './pages/homepages.dart';
import 'package:firebase_core/firebase_core.dart';
Future<void> main()async{
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
    runApp( MaterialApp(
      debugShowCheckedModeBanner: false,
    home:  HomePage()));/*Scaffold(body: Center(child: Container(color: Colors.white,width:300, height: 300,
          child: Column (children: <Widget>[
      TextField(decoration:
      InputDecoration(border: OutlineInputBorder(),labelText: "Username"),),
      SizedBox(height: 20,),
      TextField(decoration: 
      InputDecoration(border: OutlineInputBorder(),labelText: "Password"),),
      SizedBox(height: 10,),
      const Text('quên mật khẩu'),
      ElevatedButton (
      child: Text("Đăng nhập"),
      onPressed: () {},
        ),
    ]),),),),
  ));*/
}
