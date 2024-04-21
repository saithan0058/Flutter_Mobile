import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project/Gropproduct/Chair/Chair1.dart';

class Chair extends StatefulWidget {
  const Chair({super.key});

  @override
  State<Chair> createState() => _ChairState();
}

class _ChairState extends State<Chair> {
  List names = ["Chair1", "Chair2", "chair3", "Chair4", "Chair5", "chair6"];
  List serial = [
    "111111111",
    "222222222",
    "3333333333",
    "444444444",
    "555555555",
    "666666666"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, index) => Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              color: Colors.green,
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.green,
                                backgroundImage: AssetImage(
                                  "image/Avatar.jpg",
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              names[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              serial[index],
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        backgroundColor: Colors.redAccent),
                                    child: Text(
                                      '  reserve  ',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Chair1(),
                                          ));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        backgroundColor: Colors.blueAccent),
                                    child: Text(
                                      'Borrow now',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}
