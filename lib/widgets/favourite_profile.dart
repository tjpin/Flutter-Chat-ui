// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../screens/profile_screen.dart';
import '../models/users.dart';

class FavouriteProfiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.red,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                spacing: 10,
                children: users
                    .map((e) => Column(
                          children: [
                            InkWell(
                              onTap: () => Navigator.of(context).pushNamed(
                                  ProfileScreen.routName,
                                  arguments: e.name),
                              child: CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(e.profilePic),
                              ),
                            ),
                            Center(
                              child: FittedBox(
                                  child: Text(
                                e.name,
                                style: const TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold),
                              )),
                            )
                          ],
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
