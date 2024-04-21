import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/screen/main/loginapp.dart';

import 'login_demo.dart';

class RegisterDemo extends StatefulWidget {
  const RegisterDemo({super.key});

  @override
  State<RegisterDemo> createState() => _RegisterDemoState();
}

class _RegisterDemoState extends State<RegisterDemo> {

Future signUp() async {
      // final uid = FirebaseAuth.instance.currentUser!.uid;
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: _tcEmail.text.trim(), password: _tcPassword.text.trim())
          .then((value) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => login(),
          ),
        );
        FirebaseFirestore.instance
            .collection('users')
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .set({
          'Uemail': _tcEmail.text,
          'StudenId': _tcStudenID.text,
          'uid': value.user?.uid
        });
      });
    }

  final _tcEmail = TextEditingController();
  final _tcPassword = TextEditingController();
  final _tcStudenID = TextEditingController();

  // Future<void> register() async {
  //   try {
  //     await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //         email: _tcEmail.text, password: _tcPassword.text);
  //     // new user added
  //     // return to login page
  //     if (mounted) {
  //       Navigator.pushAndRemoveUntil(
  //         context,
  //         MaterialPageRoute(builder: (context) => const login()),
  //         (route) => false,
  //       );
  //     }
  //   } on FirebaseAuthException catch (e) {
  //     // cannot add new user
  //     debugPrint('Error $e');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _tcEmail,
              decoration: const InputDecoration(hintText: 'Email'),
            ),
            TextField(
              obscureText: true,
              controller: _tcPassword,
              decoration: const InputDecoration(hintText: 'Password'),
            ),
            TextField(
              // obscureText: true,
              controller: _tcStudenID,
              decoration: const InputDecoration(hintText: 'StudentID'),
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  signUp();
                  // register();
                });
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
