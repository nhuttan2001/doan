// ignore: duplicate_ignore
// ignore_for_file: prefer_const_constructors, unused_import, duplicate_ignore, use_key_in_widget_constructors, library_private_types_in_public_api, unnecessary_new

// ignore: unused_import
import 'package:doan/model/lovenews.dart';
import 'package:doan/pages/chuyentrang.dart';
import 'package:doan/pages/detail.dart';
import 'package:doan/pages/trangchu.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
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
      //ignore: unnecessary_new
      drawer:new Drawer(
       child:  ListView(

          children: <Widget>[
             // ignore: prefer_const_constructors
             UserAccountsDrawerHeader(
               accountName: const Text("Nguyễn Nhựt Tân"), 
               accountEmail: const Text("0306191360@caothang.edu.vn"),
               // ignore: unnecessary_new
               currentAccountPicture: new GestureDetector(child: CircleAvatar(backgroundImage: new NetworkImage('https://zstudio.vn/wp-content/uploads/2018/05/chup-anh-chan-dung-nam-9.jpg'),),),
               // ignore: prefer_const_constructors
               decoration:  BoxDecoration(
                // ignore: prefer_const_constructors
                image:  DecorationImage(
                  // ignore: prefer_const_constructors
                  image:  NetworkImage("https://meta.vn/Data/image/2022/01/13/anh-dep-thien-nhien-3.jpg")
                ),
               ),
            ),
             ListTile(
              title: const Text("Trang Chính"),
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const TrangchuPage()));
              },
            ),
              ListTile(
              title: const Text("Khoa CNTT"),
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Chuyentrang()));
              },
            ),
              ListTile(
              title: const Text("Đào tạo"),
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Chuyentrang()));},
             
            ),
              ListTile(
              title: const Text("CTCT-HSSV"),
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Chuyentrang()));},
              
            ),
              ListTile(
              title: const Text("Đoàn Thanh Niên"),
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Chuyentrang()));},
           
            ),
              ListTile(
              title: const Text("Học bổng - vay vốn"),
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Chuyentrang()));},
            
            ),
              ListTile(
              title: const Text("Học Phí"),
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Chuyentrang()));},
             
            ),
          ],
        ),
      ),
      body: ListView(children: [
        const Image(image:AssetImage('images/1.jpg')),
        InkWell(
          // ignore: sort_child_properties_last
          child: Container(height: 60,alignment: Alignment.center,child: const Text('Danh sách các bài viết mới'),decoration: const BoxDecoration(color:Colors.green),),
          onTap: ()async{
            await Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailPage()));
          },
        ),
        const SizedBox(height: 20,),
        // ignore: sort_child_properties_last
        InkWell(child: Container(height: 60,alignment: Alignment.center, child: const Text('Danh sách các bài viết yêu thích'),decoration: const BoxDecoration(color:Colors.green),),
          onTap: ()async{
            await Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailPage()));
          },
        ),
        SizedBox(height: 20,),
         // ignore: sort_child_properties_last
         InkWell(child: Container(height: 60,alignment: Alignment.center, child: const Text('Danh sách các bài viết quan tâm nhiều'),decoration: const BoxDecoration(color:Colors.green),),
          onTap: ()async{
            await Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailPage()));
          },
        ),
      ],)     
    );
  }
}
