import 'package:flutter/material.dart';
import 'package:project/screen/item/in/Item_in.dart';

class GridItems extends StatelessWidget {
  final List<Map<String, dynamic>> itemss;

  GridItems({required this.itemss});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: itemss.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
            padding: EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              color: Color.fromRGBO(246, 224, 83, 1),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                itemin(itemData: itemss[index]),
                          ),
                        );
                      },
                      child: Image.asset(
                        "image/${itemss[index]['imgg']}.jpg",
                        height: 250,
                        width: 300,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          itemss[index]['names'],
                          style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 162, 24, 24)
                                .withOpacity(0.8),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
