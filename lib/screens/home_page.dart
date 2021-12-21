// ignore_for_file: sized_box_for_whitespace, use_key_in_widget_constructors
import 'package:flutter/material.dart';

import '../widgets/favourite_profile.dart';
import '../widgets/recent_chats.dart';


class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Chat Ke"),
      ),
      body: Container(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: 30,
                width: double.infinity,
                color: Colors.red,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 10),
                child: const Text(
                  "Favourites",
                  style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              FavouriteProfiles(),
              Container(
                color: Colors.blue,
                width: double.infinity,
              ),
              RecentChats()
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.red,
        elevation: 10,
        onPressed: () {},
      ),
    );
  }
}



