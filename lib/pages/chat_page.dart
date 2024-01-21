import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/chat_models.dart';



class ChatPage extends StatefulWidget {
  ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder( 
        itemCount: chatData.length,
        itemBuilder: (context, i) => Column (
          children: [
            Divider( 
              height: 10.0,
            ),
            ListTile( 
              leading: CircleAvatar( 
                backgroundColor: const Color.fromARGB(255, 9, 157, 231),
              ),
              title: Text(
                chatData[i].name,
                style: TextStyle(fontWeight: FontWeight.bold)
                ),
            )
          ],)
      ), 
    );
    //to show in terms of list, and list should scroll, and data should be on demand, so here we will use list view builder.
  }
}

