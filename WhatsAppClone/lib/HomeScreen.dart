import 'package:flutter/material.dart';
import 'package:whatsappclone/ChatPage.dart';

class HomeScreen extends StatefulWidget{
  HomeScreen({Key? key}) : super(key: key);

  @override
  HomeState createState()=>HomeState();
}
class HomeState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  TabController? _controller;
  @override
  void initState(){
    super.initState();
    _controller = TabController(length: 4, vsync: this,initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF075E54),
        title: Text("WhatsApp Klonu"),
        actions: [
          IconButton(icon:Icon(Icons.search),onPressed: (){}),

          PopupMenuButton<String>(
              onSelected: (value){
                print(value);
              },
              itemBuilder: (BuildContext context){
            return [
              PopupMenuItem(child: Text("Yeni Grup"),value: "Yeni Grup",),
              PopupMenuItem(child: Text("Yeni Durum"),value: "Yeni Durum",),
              PopupMenuItem(child: Text("WhatsApp Web"),value: "WhatsApp Web",),
              PopupMenuItem(child: Text("Yıldızlı Mesajlar"),value: "Yıldızlı Mesajlar",),
              PopupMenuItem(child: Text("Ayarlar"),value: "Ayarlar",),
            ];
          }),



        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "Sohbet",
            ),
            Tab(
              text: "Durum",
            ),
            Tab(
              text: "Aramalar",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Text("Kamera"),
          ChatPage(),
          Text("Durum"),
          Text("Aramalar")
        ],
      ),
    );
  }

}