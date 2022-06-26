import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState () =>  new _HomePageState();
}
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("My Drawer app"),),
      drawer:new Drawer(
       child: new ListView(

          children: <Widget>[
            new UserAccountsDrawerHeader(
               accountName: new Text("Nguyễn Nhựt Tân"), 
               accountEmail: new Text("0306191360@caothang.edu.vn"),
               /*decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new NetworkImage("https://meta.vn/Data/image/2022/01/13/anh-dep-thien-nhien-3.jpg")
                )
               ),*/
            ),
            new ListTile(
              title: new Text("Trang Chính"),
            ),
             new ListTile(
              title: new Text("Khoa CNTT"),
              
            ),
             new ListTile(
              title: new Text("Đào tạo"),
             
            ),
             new ListTile(
              title: new Text("CTCT-HSSV"),
              
            ),
             new ListTile(
              title: new Text("Đoàn Thanh Niên"),
           
            ),
             new ListTile(
              title: new Text("Học bổng - vay vốn"),
            
            ),
             new ListTile(
              title: new Text("Học Phí"),
             
            ),
             new ListTile(
              title: new Text("Đăng nhập/Đăng xuất"),
             
            ),
          ],
        ),
      ),
      body: new Center(
        child: new Text("HomePage"),
      )
    );
  }
}
