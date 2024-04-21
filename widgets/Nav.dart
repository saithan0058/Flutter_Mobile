import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/screen/main/loginapp.dart';
import 'package:project/widgets/Profile.dart';
import 'package:project/widgets/bottom_nav.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  void signOut() async {
    await FirebaseAuth.instance.signOut().then((value) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: ((context) => login())));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("6431501051"),
            accountEmail: Text("6431501051@lamduan.mfu.ac.th"),
            currentAccountPicture: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('image/Avatar.jpg'),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('image/mfu.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.man),
            title: Text(
              "Proflie",
              style: TextStyle(color: Colors.black),
            ),
            onTap: () => setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            }),
          ),
          // ListTile(
          //   leading: Icon(Icons.history),
          //   title: Text(
          //     "History",
          //     style: TextStyle(color: Colors.black),
          //   ),
          //   onTap: () => setState(() {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => history()),
          //     );
          //   }),
          // ),
          ListTile(
            leading: Icon(Icons.output),
            title: Text(
              "Logout",
              style: TextStyle(color: Colors.black),
            ),
            onTap: () => setState(() {
              signOut();
            }),
          ),
        ],
      ),
    );
  }
}
