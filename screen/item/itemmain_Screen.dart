import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project/screen/item/in/Item_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/screen/status/detail.dart';

class Item extends StatefulWidget {
  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  // var itemss = [
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  void main() async {
    // Initialize Firebase
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();

    // Retrieve all documents in the collection
    List<DocumentSnapshot> documentSnapshots = await getAllDocuments();

    // Access the data within each document
    for (DocumentSnapshot documentSnapshot in documentSnapshots) {
      if (documentSnapshot.exists) {
        Object? data = documentSnapshot.data();
        print(data);
      } else {
        print('Document does not exist.');
      }
    }
  }

  String? StudenId = '';

  String? uid = '';

  // String? StudenId = '';

  Future _getDataFromDatabase() async {
    await FirebaseFirestore.instance
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((snapshot) async {
      if (snapshot.exists) {
        setState(() {
          StudenId = snapshot.data()!["StudenId"];
          uid = FirebaseAuth.instance.currentUser!.uid;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _getDataFromDatabase();
  }

  Future<List<DocumentSnapshot>> getAllDocuments() async {
    // Replace 'YOUR_COLLECTION' with the actual name of your collection
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('Items').get();

    return querySnapshot.docs;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<DocumentSnapshot>>(
              future: getAllDocuments(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<DocumentSnapshot>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  // Display a loading indicator while waiting for the data
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  // Handle any errors that occurred during the retrieval
                  return Text('Error: ${snapshot.error}');
                } else {
                  // Data has been successfully retrieved
                  List<DocumentSnapshot> documentList = snapshot.data!;

                  // Use the documentList as needed
                  return ListView.builder(
                    itemCount: documentList.length,
                    itemBuilder: (context, index) {
                      return SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsets.all(20),
                          height: 200,
                          width: 100,
                          color: Colors.red,
                          child: Card(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Detail(
                                        documentList:documentList[index]
                                      )),
                                );
                              },
                              child: Wrap(
                                children: [
                                  Center(
                                    child: Container(
                                      child: Image.network(
                                        documentList[index]['ImageUrl'],
                                        height: 120,
                                        width: 120,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: Text(
                                      documentList[index]['Name'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 32),
                                    ),
                                    trailing: IconButton(
                                        onPressed: () {
                                          Map<String, dynamic> data = {
                                            "StudenId": StudenId,
                                            "uid": uid,
                                            "ItemName": documentList[index]
                                                ['Name'],
                                            "ItemId": documentList[index]
                                                ['ItemId'],
                                            "ImageUrl": documentList[index]
                                                ['ImageUrl'],
                                          };
                                          FirebaseFirestore.instance
                                              .collection("pending")
                                              .doc(uid)
                                              .collection('Pending')
                                              .doc(documentList[index]['Name'])
                                              .set(data);
                                        },
                                        icon: Icon(Icons.add)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}



//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           Container(
//             height: 20,
//           ),
//           Align(
//               child: SizedBox(
//             width: 250.0,
//             child: DefaultTextStyle(
//               style: const TextStyle(
//                 fontSize: 30.0,
//                 fontFamily: 'Agne',
//               ),
//               child: AnimatedTextKit(
//                 animatedTexts: [
//                   TypewriterAnimatedText(
//                     '         My Cart',
//                     textStyle: TextStyle(
//                         color: const Color.fromARGB(255, 141, 0, 0),
//                         fontWeight: FontWeight.bold),
//                   ),
//                   TypewriterAnimatedText(
//                     '         My Cart',
//                     textStyle: TextStyle(
//                         color: const Color.fromARGB(255, 141, 0, 0),
//                         fontWeight: FontWeight.bold),
//                   ),
//                   TypewriterAnimatedText(
//                     '         My Cart',
//                     textStyle: TextStyle(
//                         color: const Color.fromARGB(255, 141, 0, 0),
//                         fontWeight: FontWeight.bold),
//                   ),
//                   TypewriterAnimatedText(
//                     '         My Cart',
//                     textStyle: TextStyle(
//                         color: const Color.fromARGB(255, 141, 0, 0),
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ],
//                 onTap: () {
//                   print("Tap Event");
//                 },
//               ),
//             ),
//           )),
//           SizedBox(
//             height: 20,
//           ),
//           GridView.builder(
//             gridDelegate:
//                 SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
//             itemCount: itemss.length,
//             shrinkWrap: true,
//             physics: NeverScrollableScrollPhysics(),
//             itemBuilder: (context, index) {
//               return InkWell(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => itemin(itemData: itemss[index]),
//                     ),
//                   );
//                 },
//                 child: Container(
//                   margin: EdgeInsets.all(10),
//                   padding: EdgeInsets.symmetric(vertical: 15),
//                   decoration: BoxDecoration(
//                     color: Color.fromARGB(255, 255, 255, 255),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Image.asset(
//                         "image/${itemss[index]['imgg']}.jpg",
//                         height: 150,
//                         width: 250,
//                       ),
//                       SizedBox(
//                         width: 400.0,
//                         child: TextLiquidFill(
//                           text: '${itemss[index]['names']}',
//                           waveColor: Color.fromARGB(255, 141, 0, 0),
//                           boxBackgroundColor:
//                               const Color.fromARGB(255, 255, 255, 255),
//                           textStyle: TextStyle(
//                             fontSize: 30.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           boxHeight: 50.0,
//                         ),
//                       ),
//                       Text('${itemss[index]['detail']}'),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
