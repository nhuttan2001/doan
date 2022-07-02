// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:doan/pages/detail.dart';
class TrangchuPage extends StatefulWidget {
  const TrangchuPage({Key? key}) : super(key: key);

  @override
  State<TrangchuPage> createState() => _TrangchuPageState();
}

class _TrangchuPageState extends State<TrangchuPage> {
  final Stream<QuerySnapshot> news = FirebaseFirestore.instance.collection('trangchu').snapshots();
  //ListTile(title: Text(data.docs[index].id),leading: Text(data.docs[index]['tenbaiviet']),subtitle:Text(data.docs[index]['noidung']) ,)
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true,title: const Text('Trang chủ')),body: Center(child:  
        
           StreamBuilder<QuerySnapshot>(
            stream: news,
            builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot){
              if(snapshot.hasError){
                return const  Text('Something went wrong');
              }
              if(snapshot.connectionState == ConnectionState.waiting){
                return const  Text('Loading');
              }
              final data = snapshot.requireData;
              return ListView.separated(separatorBuilder: (BuildContext context, int index) => const Divider(),itemCount: data.size,itemBuilder: (context,index){
                // ignore: prefer_const_literals_to_create_immutables
                return Stack(children: [               
                   Positioned(child: Image(image: AssetImage('images/1.jpg'))),
                    /*Positioned(left: 220,top: 30,child: Align(alignment: Alignment.centerRight,child: Text(data.docs[index]['thongtin'],style: TextStyle(color:Colors.black),))),*/
                 // ignore: sort_child_properties_last
          
                ],);
              },);
            },
          ),
      ),);
  }
}