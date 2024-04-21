// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class history extends StatefulWidget {
//   const history({super.key});

//   @override
//   State<history> createState() => _historyState();
// }

// var pNames = [
//   "1",
//   "2",
//   "3",
//   "4",
//   "5",
//   "6",
//   "7",
//   "1",
//   "2",
//   "3",
//   "4",
//   "5",
//   "6",
//   "7",
// ];
// var tSizes = [
//   "Computer",
//   "Mouse",
//   "Keybord ane Headphone",
//   "Cpu",
// ];

// class _historyState extends State<history> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: (Padding(
//         padding: EdgeInsets.all(10),
//         child: (SingleChildScrollView(
//           child: Column(
//             children: [
//               InkWell(
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//                 child: Row(
//                   children: [
//                     Icon(
//                       Icons.arrow_back_ios_new,
//                       size: 25,
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 height: 20,
//               ),
//               Align(
//                 child: Text(
//                   "History",
//                   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               GridView.builder(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2),
//                 itemCount: pNames.length,
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 itemBuilder: (context, index) {
//                   return InkWell(
//                       onTap: () {},
//                       child: Container(
//                         margin: EdgeInsets.symmetric(vertical: 5),
//                         height: 120,
//                         width: MediaQuery.of(context).size.width,
//                         decoration: BoxDecoration(
//                             color: Color.fromARGB(255, 248, 248, 248),
//                             borderRadius: BorderRadius.circular(10)),
//                         child: Row(
//                           children: [
//                             Container(
//                               height: 100,
//                               width: MediaQuery.of(context).size.width / 4,
//                               margin: EdgeInsets.only(left: 8),
//                               decoration: BoxDecoration(
//                                   color: Color(0xFFd4EF7),
//                                   borderRadius: BorderRadius.circular(10)),
//                               child: Image.asset(
//                                 "image/${pNames[index]}.jpg",
//                                 height: 250,
//                                 width: 300,
//                               ),
//                             ),
//                             Container(
//                               width: 20,
//                             ),
//                             Text(
//                               'Complete',
//                               style: TextStyle(color: Colors.green),
//                             )
//                           ],
//                         ),
//                       ));
//                 },
//               )
//             ],
//           ),
//         )),
//       ))),
//     );
//   }
// }
