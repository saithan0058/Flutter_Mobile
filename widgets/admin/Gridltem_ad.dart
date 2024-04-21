import 'package:flutter/material.dart';
import 'package:project/screen/poppular/popular.dart';

class GridItems_ad extends StatelessWidget {
  var pNames = [
    "1",
    "4",
    "7",
    "10",
  ];
  var tNames = [
    "Computer",
    "Mouse",
    "Keybord ane Headphone",
    "Cpu",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 400,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: pNames.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 2, horizontal: 25),
                padding: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 5)
                    ]),
                child: (Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => popular(),
                                ));
                          },
                          child: Image.asset(
                            "image/${pNames[index]}.jpg",
                            height: 250,
                            width: 300,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tNames[index],
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 162, 24, 24)
                                      .withOpacity(0.8),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
              );
            }));
  }
}
