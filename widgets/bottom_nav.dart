import 'package:flutter/material.dart';
import 'package:project/screen/status/status.dart';
import 'package:project/widgets/Nav.dart';
import 'package:project/screen/item/itemmain_Screen.dart';
import 'package:project/screen/main/contact.dart';

import 'package:project/screen/poppular/popular.dart';

class home extends StatefulWidget {
  home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int hindex = 0;
  final screen = [
    popular(),
    Item(),
    status(),
    contact(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Navbar(),
        appBar: AppBar(
          title: Text("6431501078"),
          backgroundColor: Color.fromARGB(255, 141, 0, 0),
        ),
        backgroundColor: Color.fromRGBO(246, 224, 83, 1),
        body: screen[hindex],
        bottomNavigationBar: Container(
            height: 80,
            child: BottomNavigationBar(
                backgroundColor: Color.fromARGB(255, 245, 237, 237),
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
                    icon: Icon(Icons.home_filled),
                    label: "Popular",
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.card_travel), label: "Item"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.newspaper), label: "Status"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.phone), label: "Contact"),
                ])));
  }
}













// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class home extends StatefulWidget {
//   const home({super.key});

//   @override
//   State<home> createState() => _homeState();
// }

// class _homeState extends State<home> {
//   int currentIndex = 0;
//   List widgethome = [Text('Home'), Text('gg'), Text('aa'), Text('Contact')];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: widgethome[currentIndex]),
//       bottomNavigationBar: BottomNavigationBar(

//         ],
//         currentIndex: currentIndex,
//         onTap: (intdex) => setState(() => currentIndex = intdex),
//       ),
//     );
//   }
// }
