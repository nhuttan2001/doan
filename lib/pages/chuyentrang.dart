import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class Chuyentrang extends StatelessWidget {
  const Chuyentrang({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> news = FirebaseFirestore.instance.collection('Baivietyeuthich').snapshots();
    return  Scaffold(
      appBar:  AppBar(title: const  Text ('abc'),),
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
              return ListView.builder(itemCount: data.size,itemBuilder: (context,index){
                return ListTile(title: Text(data.docs[index].id),leading: Text(data.docs[index]['tenbaiviet']),subtitle:Text(data.docs[index]['noidung']) ,);
              },);
            },
          ),
      )
    );
  }
}
