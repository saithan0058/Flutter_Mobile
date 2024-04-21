import 'package:flutter/material.dart';
import 'package:project/screen/status/status.dart';
import 'package:project/widgets/Nav.dart';
import 'package:project/screen/main/contact.dart';
import 'package:project/widgets/admin/status_ad.dart';
import 'package:project/screen/poppular/popular.dart';
import 'package:project/widgets/admin/setting.dart';

class ad extends StatefulWidget {
  ad({super.key});

  @override
  State<ad> createState() => _adState();
}

class _adState extends State<ad> {
  int hindex = 0;
  final screen = [
    Status_ad(),
    sett(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("admin"),
          backgroundColor: Color.fromARGB(255, 141, 0, 0),
        ),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: screen[hindex],
        bottomNavigationBar: Container(
            height: 80,
            child: BottomNavigationBar(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Color.fromRGBO(130, 113, 0, 1),
                unselectedItemColor: Color.fromRGBO(77, 76, 76, 1),
                selectedLabelStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                currentIndex: hindex,
                onTap: (index) {
                  setState(
                    () {
                      hindex = index;
                    },
                  );
                },
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.newspaper), label: "Status"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: "setting"),
                ])));
  }
}
