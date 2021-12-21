import 'package:flutter/material.dart';

class UserDetailCard extends StatelessWidget {
  final String name;
  final TextStyle style;

  const UserDetailCard({Key key, this.name, this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text(name[0], style: style),
          radius: 20,
        ),
        title: Text(name, style: style));
  }
}
