import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project/screen/item/in/itemc/itemc.dart';
import 'package:project/screen/poppular/popular.dart';
import 'package:project/widgets/bottom_nav.dart';
import 'package:provider/provider.dart';
import '../../../widgets/Product_Image.dart';

class itemin extends StatefulWidget {
  final Map<String, dynamic> itemData; // เพิ่มบรรทัดนี้

  itemin({Key? key, required this.itemData})
      : super(key: key); // เพิ่มพารามิเตอร์และเรียกใช้งานคลาสแม่

  @override
  State<itemin> createState() => _iteminState();
}

class _iteminState extends State<itemin> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> itemData = widget.itemData; // เก็บค่า itemData

    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 162, 24, 24),
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
                  widget.itemData['names'],
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
          SizedBox(
            height: 20,
          ),
          Text(
            widget.itemData['detail'],
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
                                builder: (context) => itemc(itemData: itemData),
                              ),
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
}

class process extends ChangeNotifier {
  int hindex = 0;
}
