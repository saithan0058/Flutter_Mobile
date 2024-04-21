// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:project/widgets/Profile.dart';
// import 'package:project/widgets/bottom_nav.dart';

// class regis extends StatefulWidget {
//   const regis({super.key});

//   @override
//   State<regis> createState() => _regisState();
  
// }

// class _regisState extends State<regis> {

//    final _Email = TextEditingController();
//     final _SID = TextEditingController();
//     final _Pass = TextEditingController();

// Future signUp() async {
//       // final uid = FirebaseAuth.instance.currentUser!.uid;
//       await FirebaseAuth.instance
//           .createUserWithEmailAndPassword(
//               email: _Email.text.trim(), password: _Pass.text.trim())
//           .then((value) {
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) => home(),
//           ),
//         );
//         FirebaseFirestore.instance
//             .collection('users')
//             .doc(FirebaseAuth.instance.currentUser!.uid)
//             .set({
//           'Uemail': _Email.text,
//           // 'StudenId': _SID.text,
//           'uid': value.user?.uid
//         });
//       });
//     }

  
//   final formKey = GlobalKey<FormState>();
//   Profile profile=Profile();
//   @override
//   // TextEditingController email = TextEditingController();
//   // TextEditingController studentid = TextEditingController();
//   // TextEditingController password = TextEditingController();
//   // TextEditingController cfpassword = TextEditingController();
//   // String name = '';

//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Color.fromRGBO(246, 224, 83, 1),
//         body:  Container(
//               width: double.infinity,
//               height: double.infinity,
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage(""), fit: BoxFit.cover)),
//               padding: (EdgeInsets.all(5)),
//               child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(height: 100,),

//                     //เว้นวรรคส่วนบน
//                     SizedBox(
//                       width: 400.0,
//                       child: TextLiquidFill(
//                         text: 'Register',
//                         waveColor: Color.fromARGB(255, 171, 176, 39),
//                         boxBackgroundColor: Color.fromRGBO(246, 224, 83, 1),
//                         textStyle: TextStyle(
//                           fontSize: 80.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                         boxHeight: 120.0,
//                       ),
//                     ),
//                     Container(
//                       height: 60,
//                     ),
//                     Form(
//                         key: formKey,
//                         child: SingleChildScrollView(
//                           child: Column(
//                             children: [
//                               TextFormField(
//                                 keyboardType: TextInputType.emailAddress,
//                                 controller: _Email,
//                                 decoration: InputDecoration(
//                                   border: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: Color.fromARGB(255, 204, 0, 1),
//                                     ),
//                                     borderRadius: BorderRadius.circular(20.0),
//                                   ),
//                                   labelText: "Email",
//                                   prefixIcon: Icon(Icons.email),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 20,
//                               ),
//                               TextFormField(
//                                 keyboardType: TextInputType.number,
//                                 controller: _SID,
//                                 decoration: InputDecoration(
//                                   border: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: Color.fromARGB(255, 204, 0, 1),
//                                     ),
//                                     borderRadius: BorderRadius.circular(20.0),
//                                   ),
//                                   labelText: "Student ID",
//                                   prefixIcon: Icon(Icons.person),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 20,
//                               ),
//                               TextFormField(
//                                 // obscureText: true,
//                                 controller: _SID,
//                                 decoration: InputDecoration(
//                                   border: OutlineInputBorder(
//                                     borderSide: BorderSide(color: Colors.red),
//                                     borderRadius: BorderRadius.circular(20.0),
//                                   ),
//                                   labelText: "Password",
//                                   prefixIcon: Icon(Icons.key),
//                                   suffixIcon: InkWell(
//                                     onTap: () {},
//                                     child: Icon(CupertinoIcons.eye_slash_fill),
//                                   ),
//                                 ),
//                               ),
//                                Container(height: 20,),
//                               ElevatedButton(
//                                 onPressed: () {
//                                   setState(() {signUp();});
//                                 },
//                                 style: ElevatedButton.styleFrom(
//                                     //กำหนดขนาดปุ่ม
//                                     padding: EdgeInsets.symmetric(
//                                         horizontal: 50.0, vertical: 15.0),
//                                     //ตกแต่งปุ่มให้มีคความมน
//                                     shape: RoundedRectangleBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(20.0)),
//                                     //การเปลี่ยนสีพื้นหลังของปุ่ม
//                                     primary: Color.fromARGB(255, 171, 176, 39)),
//                                 child: Text(
//                                   "Register",
//                                   style: TextStyle(
//                                       color: Color.fromARGB(255, 255, 255, 255),
//                                       fontSize: 18),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ))
//                   ])),
//         );
//     // Scaffold(
//     //   backgroundColor: Color.fromRGBO(246, 224, 83, 1),
//     //   body: Container(
//     //     width: double.infinity,
//     //     height: double.infinity,
//     //     decoration: BoxDecoration(
//     //         image: DecorationImage(image: AssetImage(""), fit: BoxFit.cover)),
//     //     padding: (EdgeInsets.all(5)),
//     //     child: Column(
//     //       children: [
//     //         Spacer(),

//     //         //เว้นวรรคส่วนบน
//     //         SizedBox(
//     //           width: 400.0,
//     //           child: TextLiquidFill(
//     //             text: 'Register',
//     //             waveColor: Color.fromARGB(255, 171, 176, 39),
//     //             boxBackgroundColor: Color.fromRGBO(246, 224, 83, 1),
//     //             textStyle: TextStyle(
//     //               fontSize: 80.0,
//     //               fontWeight: FontWeight.bold,
//     //             ),
//     //             boxHeight: 120.0,
//     //           ),
//     //         ),
//     //         Container(
//     //           height: 5,
//     //         ),
//     //         Padding(
//     //           padding: EdgeInsets.all(10),
//     //           child: (Column(
//     //             children: [
//     //               Padding(
//     //                 padding: EdgeInsets.all(10),
//     //                 child: (TextField(
//     //                   keyboardType: TextInputType.emailAddress,
//     //                   controller: email,
//     //                   decoration: InputDecoration(
//     //                       border: OutlineInputBorder(
//     //                         borderSide: BorderSide(
//     //                           color: Color.fromARGB(
//     //                               255, 204, 0, 1), //this has no effect
//     //                         ),
//     //                         borderRadius: BorderRadius.circular(20.0),
//     //                       ),
//     //                       labelText: "Email",
//     //                       prefixIcon: Icon(Icons.email)),
//     //                 )),
//     //               ),
//     //               Padding(
//     //                 padding: EdgeInsets.all(10),
//     // child: (TextField(
//     //   keyboardType: TextInputType.number,
//     //   decoration: InputDecoration(
//     //       border: OutlineInputBorder(
//     //         borderSide: BorderSide(
//     //           color: Color.fromARGB(
//     //               255, 204, 0, 1), //this has no effect
//     //         ),
//     //         borderRadius: BorderRadius.circular(20.0),
//     //       ),
//     //       labelText: "Student ID",
//     //       prefixIcon: Icon(Icons.person)),
//     // )),
//     //               ),
//     //               Padding(
//     //                 padding: EdgeInsets.all(10),
//     //   child: (TextField(
//     //       controller: password,
//     //       obscureText: true,
//     //       decoration: InputDecoration(
//     //         border: OutlineInputBorder(
//     //           borderSide: BorderSide(color: Colors.red
//     //               //this has no effect
//     //               ),
//     //           borderRadius: BorderRadius.circular(20.0),
//     //         ),
//     //         labelText: "Password",
//     //         prefixIcon: Icon(Icons.key),
//     //         suffixIcon: InkWell(
//     //             onTap: () {},
//     //             child: Icon(CupertinoIcons.eye_slash_fill)),
//     //       ))),
//     // ),
//     //               Padding(
//     //                 padding: EdgeInsets.all(10),
//     //                 child: (TextField(
//     //                     obscureText: true,
//     //                     decoration: InputDecoration(
//     //                       border: OutlineInputBorder(
//     //                         borderSide: BorderSide(color: Colors.red
//     //                             //this has no effect
//     //                             ),
//     //                         borderRadius: BorderRadius.circular(20.0),
//     //                       ),
//     //                       labelText: "Confirm Password",
//     //                       prefixIcon: Icon(Icons.key),
//     //                       suffixIcon: InkWell(
//     //                           onTap: () {},
//     //                           child: Icon(CupertinoIcons.eye_slash_fill)),
//     //                     ))),
//     //               )
//     //             ],
//     //           )),
//     //         ),

//     //         //เว้นระยะห่างระหว่างกล่องข้อความ

//     //         //เว้นระยะห่สงระหว่างกล่องข้อความกะปุ่ม

//     //         //สร้างปุ่ม

//     //         ElevatedButton(
//     //           onPressed: () {
//     //             setState(() {
//     //               List accout = [
//     //                 {'email': '', 'studentid': '', 'password': ''},
//     //               ];

//     //               accout.add(email);
//     //               accout.add(studentid);
//     //               accout.add(password);
//     //               Navigator.push(
//     //                 context,
//     //                 MaterialPageRoute(builder: (context) => const login()),
//     //               );
//     //             });
//     //           },
//     //           style: ElevatedButton.styleFrom(
//     //               //กำหนดขนาดปุ่ม
//     //               padding:
//     //                   EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
//     //               //ตกแต่งปุ่มให้มีคความมน
//     //               shape: RoundedRectangleBorder(
//     //                   borderRadius: BorderRadius.circular(20.0)),
//     //               //การเปลี่ยนสีพื้นหลังของปุ่ม
//     //               primary: Color.fromARGB(255, 171, 176, 39)),
//     //           child: Text(
//     //             "Register",
//     //             style: TextStyle(
//     //                 color: Color.fromARGB(255, 255, 255, 255), fontSize: 18),
//     //           ),
//     //         ),

//     //         Spacer()
//     //       ],
//     //     ),
//     //   ),
//     // );
//   }
// }
