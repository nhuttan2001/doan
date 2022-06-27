/*import 'package:flutter/material.dart';
class login extends StatefulWidget{
  @override 
  State<StatefulWidget> createState(){
    return _loginState();
  }
}
class _loginState extends State<login>{
@override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Đăng Nhập"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(height: 50.0,),
            TextField(decoration: InputDecoration(
              labelText: "Username",
              labelStyle: TextStyle(color: Color(0xff888888), fontSize: 15)
             ),),
             TextField(decoration: InputDecoration(
              labelText: "Password",
              labelStyle: TextStyle(color: Color(0xff888888), fontSize: 15),),
              ),
              MaterialButton(
                child: Text("Đăng Nhập"),
                onPressed: (){

                },color: Colors.blue,
              )
          ],
        ),
      )
    );
  }
}