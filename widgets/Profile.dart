import 'dart:ui';

import 'package:flutter/material.dart';



class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Center(
            child: Column(
              children: [
                Container(
                  height: 80,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(
                    "image/Avatar.jpg",
                  ),
                  radius: 100,
                ),
                Container(
                  height: 20,
                ),
                Text(
                  "ID student: 6431501078",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 20,
                ),
                Text(
                  "Email: 6431501078@lamduan.mfu.ac.th",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 20),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new,
                    size: 25,
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
