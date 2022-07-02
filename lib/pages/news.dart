
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const  NewsPage({Key? key,required this.noidung,required this.tenbaiviet}) : super(key: key);
  final String noidung;
  final String tenbaiviet;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(tenbaiviet)),
    // ignore: unnecessary_new
    body: new Center(child: new Text(noidung),),
    );
    
  }
}