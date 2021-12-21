import 'package:flutter/material.dart';

import '../screens/chat_screen.dart';
import '../models/users.dart';

class RecentChats extends StatelessWidget {
  const RecentChats({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.71,
      child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return Container(
                height: 90,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5,
                          color: Colors.black26,
                          offset: Offset.zero)
                    ]),
                width: double.infinity,
                child: InkWell(
                  splashColor: Colors.redAccent,
                  onTap: () => Navigator.of(context).pushNamed(
                      ChatScreen.routName,
                      arguments: users[index].name),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(users[index].profilePic),
                    ),
                    title: Text(
                      users[index].name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                    subtitle: Text(
                      users[index].message,
                      overflow: TextOverflow.fade,
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ));
          }),
    );
  }
}
