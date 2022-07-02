// ignore_for_file: unused_import, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart' show FirebaseFirestore, QuerySnapshot;
import 'package:flutter/material.dart';
import 'package:doan/pages/news.dart';

class Chuyentrang extends StatelessWidget {
  const Chuyentrang({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> news = FirebaseFirestore.instance.collection('Baivietyeuthich').snapshots();
    return  Scaffold(
      appBar:  AppBar(title: const  Text ('Trang Chủ'),),
      body: Center(child:  
        
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
                   Positioned(child: Image(width: 200,image: AssetImage('images/1.jpg'))),
                ],);
              },);
            },
                ),
      ),);
  }
}
