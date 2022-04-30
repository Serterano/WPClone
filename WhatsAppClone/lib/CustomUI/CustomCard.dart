import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Model/ChatModel.dart';
import '../Model/ChatModel.dart';
class CustomCard extends StatelessWidget {
  const CustomCard({Key? key,required this.chatModel}) : super(key: key);

  final ChatModel chatModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){},
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: SvgPicture.asset(
                  "assets/groups_black_36dp.svg",
                color:Colors.white,
                height:38,
                width:38
              ),
              backgroundColor: Colors.blueGrey,
            ),
            title: Text("+90 579 000 XX XX",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "Hi",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            trailing: Text("18:04"),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20,left: 80),
            child: Divider(thickness: 1,),
          ),
        ],
      ),
    );
  }
}
