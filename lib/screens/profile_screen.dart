import 'package:chat_app/widgets/user_detail_card.dart';
import 'package:flutter/material.dart';

import '../models/user.dart';
import '../models/users.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);
  static const routName = "/profile";

  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(
        color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 20);
    final String username = ModalRoute.of(context).settings.arguments as String;
    final userInfo = users.firstWhere((user) => user.name == username);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            userInfo.name,
            style: const TextStyle(color: Colors.white),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              height: 600,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  userInfo.profilePic,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                UserDetailCard(name: "Name: ${userInfo.name}", style: style,),
                UserDetailCard(name: "Phone: +1 000-88-111", style: style),
                UserDetailCard(name: "Location: 20 Miles Away", style: style),
              ],
            )
          ],
        ),
      ),
    );
  }
}

