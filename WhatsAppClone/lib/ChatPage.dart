import 'package:flutter/material.dart';
import 'package:whatsappclone/CustomUI/CustomCard.dart';

import 'Model/ChatModel.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats=[
    ChatModel(
      name: "Muhammed Ali",
      isGroup: false,
      currentMessage: "Selam bu benim ilk mesajım",
      time: "05:00",
      icon: "person_black_36dp.svg",
    ),
    ChatModel(
      name: "Seyda Karatepe",
      isGroup: false,
      currentMessage: "Proje bitti mi?",
      time: "18:00",
      icon: "person_black_36dp.svg",
    ),
    ChatModel(
      name: "Ege Universitesi",
      isGroup: true,
      currentMessage: "Beyler bu akşam halısaha var gelen var mı?",
      time: "12:00",
      icon: "groups_black_36dp.svg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
          itemCount: chats.length,
        itemBuilder: (context,index)=>CustomCard(
          chatModel: chats[index],
        ),
      ),
    );
  }
}
