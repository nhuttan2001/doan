// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doan/pages/news.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final Stream<QuerySnapshot> news = FirebaseFirestore.instance.collection('Baivietmoi').snapshots();
  //ListTile(title: Text(data.docs[index].id),leading: Text(data.docs[index]['tenbaiviet']),subtitle:Text(data.docs[index]['noidung']) ,)
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true,title: const Text('Danh sách các bài viết mới')),body: Center(child:  
        
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
                return Stack(children: [               
                   Positioned(child: Image(width: 200,image: AssetImage('images/1.jpg'))),
                   Positioned(left: 220,top: 10,child: Align(alignment: Alignment.centerLeft,child: Text(data.docs[index]['tenbaiviet'],style: TextStyle(color:Colors.blue),))),
                   Positioned(left: 220,top: 30,child: Align(alignment: Alignment.centerLeft,child: Text(data.docs[index]['noidung'],style: TextStyle(color:Colors.black),))),
                   Positioned(left: 220,top: 40,child: TextButton(child: Align(alignment: Alignment.centerLeft,child: Text('Xem thêm',style: TextStyle(color:Colors.red))),onPressed: ()async{
                    await Navigator.push(context, MaterialPageRoute(builder: (context)=> NewsPage(tenbaiviet:data.docs[index]['tenbaiviet'] ,noidung: data.docs[index]['noidung'],)));
                   },))
                ],);
              },);
            },
          ),
      ),);
  }
}