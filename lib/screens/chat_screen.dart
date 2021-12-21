import 'package:flutter/material.dart';

import '../models/users.dart';

class ChatScreen extends StatefulWidget {
  static const routName = "/chats";

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final String username = ModalRoute.of(context).settings.arguments as String;
    final info = users.firstWhere((user) => user.name == username);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(info.profilePic),
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert), splashRadius: 25,)
        ],
        title: Text(
          username,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: Text(
        info.message,
        style: const TextStyle(fontSize: 22),
      )),
    );
  }
}
