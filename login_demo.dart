import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/register_demo.dart';
import 'package:project/widgets/bottom_nav.dart';

class LoginDemo extends StatefulWidget {
  const LoginDemo({super.key});

  @override
  State<LoginDemo> createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  final _tcEmail = TextEditingController();
  final _tcPassword = TextEditingController();

  Future<void> login() async {
    String email = _tcEmail.text;
    String password = _tcPassword.text;
    // debugPrint(email);
    // debugPrint(password);

    try {
      // login with email and password
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      // login is successful
      // debugPrint('Welcome ${credential.user!.email}');
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) =>  home()),
        );
      }
    } on FirebaseAuthException catch (e) {
      // login failed
      debugPrint('Error ${e.code}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
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
            ElevatedButton(
              onPressed: login,
              child: const Text('Login'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('No account'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterDemo()),
                    );
                  },
                  child: const Text('Register'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
