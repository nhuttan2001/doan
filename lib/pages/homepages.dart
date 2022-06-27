import 'package:doan/model/lovenews.dart';
import 'package:doan/pages/chuyentrang.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState () =>  new _HomePageState();
}
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:  AppBar(title: const Text("Danh Mục"),),
      // ignore: unnecessary_new
      drawer:new Drawer(
       child:  ListView(

          children: <Widget>[
             UserAccountsDrawerHeader(
               accountName: const Text("Nguyễn Nhựt Tân"), 
               accountEmail: const Text("0306191360@caothang.edu.vn"),
               decoration: new BoxDecoration(
                image:  DecorationImage(
                  image: new NetworkImage("https://meta.vn/Data/image/2022/01/13/anh-dep-thien-nhien-3.jpg")
                ),
               ),
            ),
             ListTile(
              title: const Text("Trang Chính"),
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Chuyentrang()));
              },
            ),
              ListTile(
              title: const Text("Khoa CNTT"),
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Chuyentrang()));
              },
            ),
              ListTile(
              title: new Text("Đào tạo"),
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Chuyentrang()));},
             
            ),
              ListTile(
              title: new Text("CTCT-HSSV"),
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Chuyentrang()));},
              
            ),
              ListTile(
              title: const Text("Đoàn Thanh Niên"),
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Chuyentrang()));},
           
            ),
              ListTile(
              title: const Text("Học bổng - vay vốn"),
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Chuyentrang()));},
            
            ),
              ListTile(
              title: const Text("Học Phí"),
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Chuyentrang()));},
             
            ),
          ],
        ),
      ),
      body: new Center(
          child: Column(children: [
            Image.asset('images/1.jpg')
          ],)
          ),      
    );
  }
}
