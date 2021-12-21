// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'screens/chat_screen.dart';
import 'screens/home_page.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: prefer_const_literals_to_create_immutables
      debugShowCheckedModeBanner: false,
      routes: {
        ChatScreen.routName: (_) => ChatScreen(),
        ProfileScreen.routName: (_) => ProfileScreen(),
      },
      home: ChatPage(),
    );
  }
}
