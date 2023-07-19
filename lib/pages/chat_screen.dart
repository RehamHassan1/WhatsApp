import 'package:flutter/material.dart';
import 'package:flutterapp/models/chat_model.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Data.length,
      itemBuilder: (context,i)=>  Column(
        children: [
          Divider(height:10),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(Data[i].avatarUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
Text(Data[i].name,style: TextStyle(fontWeight: FontWeight.bold),),
Text(
                    Data[i].time,
                    style: TextStyle(fontSize: 14.0,color: Colors.grey),
                  ),

            ]),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                    Data[i].message,
                    style: TextStyle(fontSize: 16.0,color: Colors.grey),
                  ),
            ),
          )
        ],
      ),
    );
  }
}
