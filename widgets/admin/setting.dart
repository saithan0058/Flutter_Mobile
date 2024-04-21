import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class sett extends StatefulWidget {
  const sett({super.key});

  @override
  State<sett> createState() => _settState();
}

class _settState extends State<sett> {
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
                  "Admin",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 20,
                ),
                Text(
                  "Email: Admin@lamduan.mfu.ac.th",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(height: 20),
                // Text(
                //   "Password 123****90",
                //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                // ),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: Text('Change Password'),
                //   style: ElevatedButton.styleFrom(
                //     primary: Colors.redAccent,
                //     textStyle: TextStyle(
                //       fontSize: 20, // ตัวอย่างเพิ่มขนาดเป็น 20
                //     ),

                //     // ระบุคุณสมบัติอื่น ๆ ตามต้องการได้ที่นี่
                //   ),
                // ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
