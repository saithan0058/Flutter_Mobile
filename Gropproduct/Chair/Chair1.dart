import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project/screen/item/in/Item_in.dart';
import 'package:project/screen/item/in/itemc/itemc.dart';
import 'package:project/widgets/bottom_nav.dart';
import 'package:provider/provider.dart';
import '../../../widgets/Product_Image.dart';

class Chair1 extends StatefulWidget {
  const Chair1({super.key});

  @override
  State<Chair1> createState() => _Chair1State();
}

class _Chair1State extends State<Chair1> {
  int hindex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 4, 222, 255),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                )),
            child: Stack(children: [
              Center(
                child: ProductImageSlider(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 25,
                  ),
                ),
              )
            ]),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Computer",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                child: Row(
                  children: [
                    RatingBar.builder(
                        initialRating: 3.5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 25,
                        itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                        onRatingUpdate: (rating) {}),
                    SizedBox(
                      width: 15,
                    ),
                    Text('(450)'),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                "\$140",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "\$200",
                style: TextStyle(
                    color: Colors.black45,
                    decoration: TextDecoration.lineThrough),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.justify,
          )
        ],
      )),
      bottomNavigationBar: Container(
        height: 60,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 150),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Consumer<process>(
                  builder: ((context, value, child) => ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => itemc(
                                        itemData: {},
                                      )),
                            );
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            //กำหนดขนาดปุ่ม
                            padding: EdgeInsets.symmetric(
                                horizontal: 50.0, vertical: 15.0),
                            //ตกแต่งปุ่มให้มีคความมน
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            //การเปลี่ยนสีพื้นหลังของปุ่ม
                            primary: Colors.pinkAccent),
                        child: Text(
                          "Add",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 18),
                        ),
                      ))),
            )
          ],
        ),
      ),
    );
  }

  Widget createRow(String name, BuildContext context) {
    return Row(
      children: [
        Spacer(),
        ElevatedButton(
          onPressed: () {
            hindex + 2;
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => home()),
              );
            });
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}
