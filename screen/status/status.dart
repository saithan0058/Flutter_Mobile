import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



class status extends StatefulWidget {
  const status({super.key});

  @override
  State<status> createState() => _statusState();
}
final uid = FirebaseAuth.instance.currentUser!.uid;
CollectionReference mainCollectionRef =
    FirebaseFirestore.instance.collection('pending');
// Assuming you have a reference to the subcollection
CollectionReference subCollectionRef =
    mainCollectionRef.doc(uid).collection('Pending');

// Deleting a document in the subcollection
void deleteDocumentInSubcollection(String documentId) {
  subCollectionRef.doc(documentId).delete().then((value) {
    print('Document deleted successfully.');
  }).catchError((error) {
    print('Failed to delete document: $error');
  });
}

class _statusState extends State<status> {
 


FirebaseFirestore firestore = FirebaseFirestore.instance;




Future<List<DocumentSnapshot>> fetchCollectionData() async {
  QuerySnapshot querySnapshot =
      await firestore.collection('pending').doc(FirebaseAuth.instance.currentUser!.uid).collection('Pending').get();

  return querySnapshot.docs;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StatefulBuilder(builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  thickness: 2.5,
                ),
              ),
              Expanded(
                child: FutureBuilder<List<DocumentSnapshot>>(
                  future: fetchCollectionData(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else {
                      List<DocumentSnapshot> documents = snapshot.data!;
                      return ListView.builder(
                        itemCount: documents.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ListTile(
                                title: Text(documents[index]['ItemName']),
                                leading: Image.network(
                                  documents[index]['ImageUrl'],
                                  scale: 6,
                                  fit: BoxFit.cover,
                                  width: 50,
                                  height: 50,
                                ),
                                trailing: IconButton(
                                  icon: Icon(Icons.delete),
                                  onPressed: (() {
                                    deleteDocumentInSubcollection(
                                        documents[index]['ItemName']);
                                        state(
                                      () {},
                                    );
                                  }),
                                  
                                ),
                               
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Divider(
                                  thickness: 2.5,
                                ),
                              ),
                              
                            ],
                          );
                        },
                      );
                    }
                  },
                ),
              ),
              ElevatedButton(onPressed: (){}, child: Text('Confirm'))
            ],
          ),
        );
      }),
    );
  }
}


